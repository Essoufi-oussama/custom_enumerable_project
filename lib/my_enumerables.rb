module Enumerable
  def my_find
    self.each do |elem|
      return elem if yield(elem)
    end
    nil
  end

  def my_all?
    self.my_each do |elem|
       return false if !yield(elem)
    end
    true
  end

  def my_any?
    self.my_each do |elem|
      return true if yield(elem)
    end
    false
  end
  
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here
  def my_each
    for i in self
      yield(i)
    end
  end
end
