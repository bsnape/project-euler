class Problem1

=begin
Problem 1

If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9.
The sum of these multiples is 23.

Find the sum of all the multiples of 3 or 5 below 1000.
=end

  def sum_of_two_multiples(number, first_multiple, second_multiple)
    sum = 0
    (1..number).each { |n| sum += n if multiple_of?(n, first_multiple) || multiple_of?(n, second_multiple) }
    sum
  end

  def multiple_of?(number, multiple)
    number % multiple == 0
  end

end
