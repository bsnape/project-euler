class Problem5

=begin
  Problem 5

  2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
  What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
=end

  def initialize(divisors)
    @divisors = divisors
  end

  def divisible?(number, factor)
    number % factor == 0
  end

  def find_smallest_divisible_number
    (1..Float::INFINITY).each do |number|
      count = 0
      @divisors.each do |divisor|
        break unless divisible?(number, divisor)
        count += 1
      end
      return number if count == @divisors.size
    end
  end

end
