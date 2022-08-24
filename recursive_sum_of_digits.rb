# A class that has a method that takes a number as an input and generates an output by adding each digit.
class RecursiveSumOfDigits
  def self.run!(number)
    num = number.to_s.split('').collect(&:to_i).sum
    num.to_i > 9 ? run!(num.to_i) : num.to_i
  end
end
