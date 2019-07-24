# frozen_string_literal: true

module Enumerable
  # my_each method
  def my_each
      i = 0
      until i == self.length
        yield (self[i])
        i += 1
      end
  end

  #my_each_with_index method
  def my_each_with_index
    i = 0
    until i == self.length
      yield(self[i], i)
      i += 1
    end
  end

end



arr = [4, 9, 2, 9, 56, 4, 0]
#arr = ['girl','boy','girl','girl']

# {"h"=> 2, "v"=> 1, "l"=> 4, "m"=> 2, }.my_each{|k, v| puts v*2}

 arr.my_each{ |ele| puts ele }

 #arr.my_each_with_index { |ele, i| puts i }

# puts arr.my_select{ |ele| puts ele  > 4}

# arr.my_all?{ |ele| puts ele  > 4}

# arr.my_all? { |a| a >= 3 }

 #puts arr.my_none?{|a| a.nil? }
 #puts arr.none?{|a| a.nil? }
 #puts arr.none?

#puts arr.my_count{|ele| puts ele}

#puts arr.my_any? { |ele| puts ele == 2 }
#puts arr.any? { |ele| puts ele == 2 }
