# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


require "csv"

puts "---- Populating database with a Sample ETF Taken from first row of Spreadsheet ----"

BickEtf = Etf.find_or_create_by_composite_ticker("BICK") do |etf|
  etf.sponsor = "First Trust"
  etf.composite_name = "First Trust BICK"
  etf.location = "United States"
  etf.exchange = "NASDAQ GM"
  etf.total_shares = 200
  etf.last_trade = 24.28
  etf.type = "Global Equity"
  etf.shares_outstanding = 300
  etf.market_cap = "34.29"
  etf.e_signal_ticker = "BICK"
  etf.time_zone = "All"

  etf.dividend_yield = 0.41
end

BickEtf.save!

100.times do |n|

  stock = Stock.find_or_create_by_symbol("STK#{n}") do |s|
    s.name = "Stock#{n}"
    s.industry = "Electronics"
  end
  stock.save!
  BickEtf.stocks << stock
end

BickEtf.save!
