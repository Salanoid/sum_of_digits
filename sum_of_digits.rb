require 'pry'
# A class that has a method that takes a number as an input and generates an output by adding each digit.
class SumOfDigits
  def self.run!(number)
    return 0 if number.zero?

    number = (number / 10 + number % 10) while number >= 10
    number
  end
end
