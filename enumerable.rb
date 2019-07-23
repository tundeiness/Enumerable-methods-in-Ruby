# frozen_string_literal: true

module Enumerable
  # my_each method
  extend self
  def my_each
    if self.instance_of?(Array)
      i = 0
      until i == self.length
        yield (self[i])
        i += 1
      end
    elsif self.instance_of?(Hash)
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
    if self.instance_of?(Array)
      i = 0
      until i == self.length
        yield(self[i])
        i += 1
      end

    elsif self.instance_of?(Hash)
      i = 0
      arr = to_a
      until i == arr.length
        yield (arr[i][0], arr[i][1])
        i += 1
      end
      self
    end
  end

  # my_select method
  def my_select
    res = []
    my_each do |elem|
      res << elem if yield(elem)
    end
    res
  end

  # my_none? method
  def my_none?
    truthy = false
    my_select do |item|
      truthy = true unless yield item
      break
    end
    truthy
  end

  # my_count method
  def my_count(_arg = nil)
    cnt = 0
    my_select { |ele| ele * 1 }
  end

  # my_any method
  def my_any?(*_args)
    my_each do |x|
      if yield(x)
        return false
      else
        return true
      end
    end
  end
end

arr = [4, 9, 2, 9, 56, 4, 0]

# {"h"=> 2, "v"=> 1, "l"=> 4, "m"=> 2, }.my_each{|k, v| puts v*2}

 arr.my_each { |ele| puts ele }

# arr.my_each_with_index { |ele, i| puts ele }

# puts arr.my_select{ |ele| puts ele  > 4}

# arr.my_all?{ |ele| puts ele  > 4}

# arr.my_all? { |a| a >= 3 }

# puts arr.my_none?{|a| a.nil? }

# puts arr.my_count(4){|ele| puts ele == 2}

#puts arr.my_any? { |ele| puts ele == 2 }
#puts arr.any? { |ele| puts ele == 2 }
