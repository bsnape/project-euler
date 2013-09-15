class SieveOfEratosthenes

  attr_reader :values, :p

  def initialize(number)
    range = (2..number).to_a
    @values = Hash[range.zip(Array.new(range.size, false))]
    @p = 2
  end

  def sieve
    @values.each do |k, v|
      next if k <= @p
      @values[k] = true if k % @p == 0
    end
    increment_p
    @values
  end

  def increment_p
    @p += 1
  end

  def sieve_to_solution
    sieve until @values.max[0] == @p
  end

  def primes
    @values.select { |k, v| !v }.keys
  end

end
