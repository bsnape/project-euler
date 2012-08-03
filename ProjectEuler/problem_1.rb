class Problem1

=begin
Problem 1

If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9.
The sum of these multiples is 23.

Find the sum of all the multiples of 3 or 5 below 1000.
=end


  def self.sum_of_two_multiples (number_limit, first_multiple, second_multiple)
    sum = 0
    (1..number_limit).each do |n|
      sum += n if n % first_multiple == 0 || n % second_multiple == 0
    end
  sum
  end

  puts self.sum_of_two_multiples 999, 3, 5
end