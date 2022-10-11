stock_prices = [17,3,6,9,15,8,6,1,10,4,215]
require "pry-byebug"
# buy price 
# sell price
# empty array to store prices 

# I need a way to loop through the list for buy prices and for sell prices
# i need a way to loop in a way that offsets the sell price to be after the buy price
# i need a way to return the max difference in price


def stock_picker(prices)
  buy_price = prices[0]
  sell_price=0
  buy_day=0
  sell_day=0
  profit=0
  trade_schedule= []
  prices.each_with_index do |price,day|
   
    if price < buy_price
      buy_price = price
      buy_day = day
      next
    end
      if price - buy_price > profit
        profit = price - buy_price
        sell_day=day
        trade_schedule = [buy_day,sell_day]
      end
  end
 trade_schedule
end

puts stock_picker(stock_prices)
