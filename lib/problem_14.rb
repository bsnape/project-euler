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

  def even?(number)
    number % 2 == 0
  end

  def even_rule(number)
    number / 2
  end

  def odd_rule(number)
    (number * 3) + 1
  end

  def calculate_chain_length(starting_number)
    n = starting_number
    chain_count = 1

    until (n == 1)
      if even? n
        n = even_rule n
      else
        n = odd_rule n
      end
      chain_count += 1
    end

    chain_count
  end

end
