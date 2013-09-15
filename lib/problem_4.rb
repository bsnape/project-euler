class Problem4

=begin
Problem 4
A palindromic number reads the same both ways.

The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

Find the largest palindrome made from the product of two 3-digit numbers.
=end

  def palindrome?(number)
    number == number.to_s.reverse.to_i
  end

  def largest_palindromic_product(digit_number)
    max = [9].cycle.take(digit_number).join.to_i
    palindromes = []

    (1..max).to_a.reverse.each do |first_number|
      (1..max).to_a.reverse.each do |second_number|
        sum = first_number * second_number
        palindromes << sum if palindrome? sum
      end
    end
    palindromes.sort.max
  end

end
