class Problem14

=begin
Problem 14

The following iterative sequence is defined for the set of positive integers:

n -> n/2 (n is even)
n -> 3n + 1 (n is odd)

Using the rule above and starting with 13, we generate the following sequence:

13 -> 40 -> 20 -> 10 -> 5 -> 16 -> 8 -> 4 -> 2 -> 1

It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms.
Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.

Which starting number, under one million, produces the longest chain?

NOTE: Once the chain starts the terms are allowed to go above one million.

=end

  @longest_chain_value = 0
  @longest_chain_count = 0

  def self.even? (number)
    true if number % 2 == 0
  end

  def self.even_rule (number)
    number / 2
  end

  def self.odd_rule (number)
    (number * 3) + 1
  end

  (13..999999).to_a.each do |n|
    initial_chain_value = n
    chain_count = 0
    until (n == 1)
      if even? n
        n = even_rule n
      else
        n = odd_rule n
      end
      chain_count += 1
    end

    if chain_count > @longest_chain_count
      @longest_chain_value = initial_chain_value
      @longest_chain_count = chain_count
    end
  end

  puts "the starting value with the longest chain is: #{@longest_chain_value} with count: #{@longest_chain_count}"

end