# frozen_string_literal: true

module Enumerable
  # my_each method
  def my_each
    if instance_of?(Array)
      i = 0
      until i == length
        yield (self[i])
        i += 1
      end
    elsif instance_of?(Hash)
      i = 0
      arr = to_a
      until i == arr.length
        yield arr[i][0], arr[i][1]
        i += 1
      end
      self
    end
 end

  # my_each_with_index method
  def my_each_with_index
    if instance_of?(Array)
      i = 0
      until i == length
        yield(self[i], i)
        i += 1
      end

    elsif instance_of?(Hash)
      i = 0
      arr = to_a
      until i == arr.length
        yield arr[i][0], arr[i][1], i
        i += 1
      end
      self
    end
  end

  #my_select method
  def my_select
    res=[]
       self.my_each do |elem|
          if yield(elem)
           res << elem
          end
       end
        res
  end

  #my_none? method
  def my_none?
    truthy = false
    self.my_select do |item|
      unless yield item
        truthy = true
      end
      break
    end
    truthy
  end


end

arr = [4, 9, 2, 9, 56, 4, 0]

# {"h"=> 2, "v"=> 1, "l"=> 4, "m"=> 2, }.my_each{|k, v| puts v*2}

# arr.my_each { |ele| puts ele }

# arr.my_each_with_index { |ele, i| puts ele }

puts arr.my_select{ |ele| puts ele  > 4}

# arr.my_all?{ |ele| puts ele  > 4}
# arr.my_all? { |a| a >= 3 }
