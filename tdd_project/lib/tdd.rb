require 'byebug'

class Array 

  def my_uniq
    result = []
    self.each do |ele|
      result << ele unless result.include?(ele)
    end 
    result 
  end

  def two_sum
    result = []
    self.each_index do |idx|
      (idx + 1...self.length).each do |jdx|
        result << [idx, jdx] if self[idx] + self[jdx] == 0
      end
    end
    result
  end

  def my_transpose 
    result = []
    self.each do |row|
      new_row = []
      row.each do |col|
        new_row << col 
      end
      result << new_row
    end 
    result 
  end
end 

def stock_picker(prices)
  # debugger
  result = nil
  (0...prices.length - 1).each do |buy_day|
    (buy_day + 1...prices.length).each do |sell_day|
      # debugger
      if result.nil?
        result = [buy_day, sell_day]
      else
        # debugger
        #greatest_profit = prices[result[1]] - prices[result[0]] 
        greatest_profit = result[1] - result[0]
        #  debugger s
        current_profit = prices[sell_day] - prices[buy_day]
        # debugger
        if current_profit > greatest_profit
          result = [buy_day, sell_day]
        end
      end
    end
  end
  result
end

prices = [1,3,5,6,2,7]
stock_picker(prices)

