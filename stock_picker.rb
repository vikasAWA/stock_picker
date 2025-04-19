def stock_picker(stocks)
  best_days = [0, 0]
  max_profit = 0

  stocks.each_with_index do |buy_price, buy_day|
    stocks[buy_day + 1..].each_with_index do |sell_price, sell_day|
      profit = sell_price - buy_price
      if profit > max_profit
        max_profit = profit
        best_days = [buy_day, sell_day + buy_day + 1]  # ← Fix here
      end
    end
  end

  best_days
end

