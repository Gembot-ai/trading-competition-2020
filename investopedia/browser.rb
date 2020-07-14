require 'capybara'
require 'capybara/dsl'
require 'selenium-webdriver'


# Wrapper to manage Chrome
class HeadlessBrowser 
  include Capybara::DSL

  def initialize(config)
    # Setup Capybara browser
    Capybara.register_driver :selenium do |app|
      Capybara::Selenium::Driver.new(app, browser: :chrome)
    end
    # For some reason headless does not work
    Capybara.register_driver :headless_selenium do |app|
      options = Selenium::WebDriver::Chrome::Options.new
      options.add_argument('--headless')
      capabilities = Selenium::WebDriver::Remote::Capabilities.chrome(
        chromeOptions: {
          args: %w[headless enable-features=NetworkService,NetworkServiceInProcess]
        }
      )
      Capybara::Selenium::Driver.new app,
        browser: :chrome,
        options: options,
        desired_capabilities: capabilities
    end
    # Configure capybara
    Capybara.configure do |c|
      c.run_server = false
      c.default_driver = :selenium
      c.app_host = config.get("INVESTOPEDIA_LOGIN_URL")
    end
    @config = config
    @short_wait = 0.5
    @medium_wait = 5
    @long_wait = 10
  end

  ##Waiting
  def wait_for_a_little
    sleep @short_wait
  end
  def wait_a_second
    sleep 1
  end
  def wait_a_while
    sleep @medium_wait
  end
  def wait_ages
    sleep @long_wait
  end
  # Login to Investopedia
  def login
    begin
      visit ('/')
      wait_a_second
      click_button("Log In")
      wait_a_second
      fill_in :placeholder => "Email Address", :with => @config.get("INVESTOPEDIA_EMAIL")
      fill_in :placeholder => "Password", :with => @config.get("INVESTOPEDIA_PASSWORD")
      click_button("Sign In")
      wait_ages
      return true if page.body.include? "View real-time markets data and news"
    rescue StandardError => e
      puts "Could not Login"
      puts e
    end
    false
  end
  # Buy or sell stocks
  def trade_stock(symbol:, transaction:, quantity:)
    begin
      visit ('/trade/tradestock.aspx')
      fill_in name: 'symbolTextbox', with: symbol
      fill_in name: 'quantityTextbox', with: quantity
      select(transaction, from: "transactionTypeDropDown")
      click_button("Preview Order")
      wait_a_second
      click_button("Submit Order")
      return true if page.body.include? "Trade Confirmation"
    rescue StandardError => e
      puts "Could not place trade: #{transaction} #{quantity} of #{symbol}"
      puts e
    end
    false
  end
  # Close the Browser
  def close_window
    page.driver.browser.close
  end
  # Kill the process, for some reason this does not work yet
  def kill 
    page.quit
    page.driver.quit
  end
end