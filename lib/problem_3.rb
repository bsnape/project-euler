class Problem3

=begin
Problem 3

The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?
=end

  def generate_prime_numbers(max_value)
    (3..max_value).select do |n|
      next if n.even?
      prime?(n)
    end
  end

  def prime?(number)
    (3..(number / 2).floor).each { |n| number % n == 0 ? break : true }
  end

  def calculate_prime_factors(number)
    primes = generate_prime_numbers(number)
    primes.select { |prime| number % prime == 0 }
  end

end
