# Trading Competition 2020

Seed repository for the trading competition, with some example projects you can use to get started.

You must fork this repo to enter the competition, and use the same license in the forked repo to be eligible.

## Menu

[License](LICENSE)

[Trading Tips](TRADING.md)

[IB Client Portal](IB-CLIENT-PORTAL.md)

[Capybara Cheat Sheet](https://gist.github.com/zhengjia/428105)

## Overview

The target is to paper-trade on interactive brokers, to make the most money possible before the competition ends.

You can fork this repo, and start testing your ideas and developing a strategy.

You will have to research a trading strategy, do some back-testing then pitch your investment strategy before you can open the paper trading account.

You can then trade on the interactive broker API and build up your fund as large as possible!

## Getting started

Make sure you install all the pre-requisites, then copy the example .env files but remove the ".example" from the end.  This is done so that live credentials are not available in the github repo, which is publicly viewable.

Then you can run the example back testing bot to see how it might work

```bash
ruby example-test.rb
```

Make sure you have a read through the code to understand how it works.

## Pre-requisites

In order to access the Interactive Broker API, you must do this through their custom gateway.  This requires Java, and is located in the

```bash
/ib-client-portal
```

folder.  You are not required to use this to make trades, you can also login to the platform and trade manually, however this is available.

All of the examples are in Ruby, so if you want to run any of the scripts you will need to install the latest Ruby version.  You can either use the Ruby Version Manager (or RVM) if you want to install multiple versions of Ruby (is sometimes required for projects with specific versioning requirements), or you can just install the latest Ruby version from your system's package manager.

If you are missing any dependencies, you can install them using the Ruby package manager called "gem".  So you can do something like:

```bash
gem install 'package-name'
```

And after that you should be fine to run the script.  I know most people these days learn Python as a scripting language, but I deliberately chose Ruby, as part of my long-standing mission to have Python deprecated in favour of Ruby, which is a superior language in every way imaginable.  If, like most people, you've been taught Python, now is your chance to repent, and change your ways.

## Code Examples

I hope this gives you enough ideas on how you could build a trading algorithm.  You could use the historic data to do back-testing and test a strategy out.  You could then create a bot, which listens to live price data, and then executes trades based on price movements, for example.

### Historic Stock Data

I've included some code examples, and some other useful information.  In the Yahoo Finance directory, I've included a large list of Tickers for the NASDAQ and NYSE Exchanges.  This list is not easy to get, and is probably not exhaustive either but is a great starting point for exploring historical data.

There is an example in that folder as well of extracting historic daily data from the Yahoo Finance API.  The official API was discontinued a few years ago so I wrote this code to sneakily extract it from the Yahoo Finance website.

### Live Data

Reliable live stock data is a bit harder, and more expensive to obtain.  However I've included a script which will scrape the Yahoo Finance page and attempt to extract the live price from the HTML.

### Exchange Rates

I've also written a sample script to extract historic exchange rate data from the European Central Bank API.

You might want this data to either take into consideration that we are a New Zeland company, taking investment in NZD and trading it on US exchanges.  This means that we must take into consideration exchange rates when calculating returns and managing funds.

You might also want to develop a pure Forex strategy and use this data-set for that.

### Interactive Broker Bot

There are a couple of ideas for coding an IB Bot, one written in Vue/JS, another written in Ruby.

Our focus has largely been on US Stocks, but there is nothing stopping you exploring other markets or opportunities either.
