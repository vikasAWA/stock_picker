def stock_picker(prices)
  max_profit = 0
  pair = nil
  prices.each_with_index do |buy_price, buy_day|
    prices.each_with_index do |sell_price, sell_day|
      if sell_day > buy_day && (sell_price - buy_price) > max_profit 
        max_profit = sell_price - buy_price
        pair = [buy_day, sell_day]
      end
    end 
  end
  pair
end

p stock_picker([17,3,6,9,15,8,6,1,10])
p stock_picker([100,131,111,119,151,118,206,90])