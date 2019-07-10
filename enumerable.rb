module Enumerable

  def my_each
    # your code here
    i = 0
    while i < self.length
      yield(self[i])
      i += 1
    end
  end

  def my_each_with_index
    i = 0
    while i < self.length
      yield(self[i], i)
      i += 1
    end

  end

  def my_select
    my_select.my_each
  end

  def my_all?
  end

  def my_any?
  end
end


arr = [4,9,2,9,56,4,0]

arr.my_each {|ele| puts ele}
