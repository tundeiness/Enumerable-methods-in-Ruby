module Enumerable
  def my_each
    # your code here
    i = 0
    while i < self.length
      yield(self[i])
      i += 1
    end
  end
end
