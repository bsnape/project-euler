class Problem5

=begin
  Problem 5

  2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
  What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
=end

  def self.divisible? (number, factor)
    return true if number % factor == 0
  end

  number = 0
  count = 0

  until count == 10
    count = 0
    number += 1
    (11..20).each do |n|
      break unless self.divisible? number, n
      count += 1
    end
  end

  puts number, count

end