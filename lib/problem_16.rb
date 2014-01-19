class Problem16

=begin
  Problem 16

  2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.

  What is the sum of the digits of the number 2^1000?
=end

  def sum_of_digits(number)
    sum = 0
    (number).to_s.each_byte { |b| sum += b.chr.to_i }
    sum
  end

end
