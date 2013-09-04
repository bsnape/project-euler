class Problem20

=begin
n! means n * (n - 1) * ... * 3 * 2 * 1

For example, 10! = 10 * 9 * ... * 3 * 2 * 1 = 3628800,
and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.

Find the sum of the digits in the number 100!
=end

  def self.factorial n
    n == 0 ? 1 : n * factorial(n-1)
  end

  def self.sum_of_digits (number)
    sum = 0
    (number).to_s.each_byte {|b| sum += b.chr.to_i}
    sum
  end

  factorial_sum = sum_of_digits (factorial 100)

  puts "the sum is: #{factorial_sum}"

end