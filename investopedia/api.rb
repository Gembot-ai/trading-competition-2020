require './investopedia/browser'
require './config'

config = Config.build('./.env')
browser = HeadlessBrowser.new(config)

if !browser.login
  puts "Error Logging in"
  exit
end

browser.trade_stock(symbol: "AAPL", transaction: "Buy", quantity: 10)