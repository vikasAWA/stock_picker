def stock_picker(arr)
  max_profit = 0
  pair = nil
  arr.each_with_index.reduce(arr.dup) do |acc, (buy_stock, buy_idx)|
    acc.shift
    acc.each do |sell_stock|
      profit = sell_stock - buy_stock
      sell_idx = arr.index(sell_stock)
      if profit > max_profit
        max_profit = profit
        pair = [buy_idx, sell_idx]
      end
    end
    acc
  end
  pair
end 

p stock_picker([17,3,6,9,15,8,6,1,10])
p stock_picker([100,131,111,119,151,118,206,90])