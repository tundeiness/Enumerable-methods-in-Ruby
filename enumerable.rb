# frozen_string_literal: true

module Enumerable
  # my_each method
  def my_each
    if instance_of?(Array)
      i = 0
      until i == self.length
        yield (self[i])
        i += 1
      end
    elsif instance_of?(Hash)
      i = 0
      arr = self.to_a
      until i == arr.length
        yield arr[i][0], arr[i][1]
        i += 1
      end
      self
    end
  end

  #my_each_with_index method
  def my_each_with_index
    if instance_of?(Array)
      i = 0
      until i == self.length
        yield(self[i], i)
        i += 1
      end

    elsif instance_of?(Hash)
      i = 0
      arr = self.to_a
      until i == arr.length
        yield arr[i][0], arr[i][1], i
        i += 1
      end
        self
    end
  end


  def my_select
    my_select.my_each
  end

  def my_all?; end

  def my_any?; end
end

arr = [4, 9, 2, 9, 56, 4, 0]

#{"h"=> 2, "v"=> 1, "l"=> 4, "m"=> 2, }.my_each{|k, v| puts v*2}

#puts arr.my_each { |ele| puts ele }

puts arr.my_each_with_index { |ele, i| puts i }
