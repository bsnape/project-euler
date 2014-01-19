class SieveOfEratosthenes

  attr_reader :values, :p

  def initialize(max_value)
    @max_value = max_value
    @values = (2..max_value).to_a
    @p = 2
  end

  def sieve
    @values.each do |value|
      next if value <= @p
      @values.delete_if { |v| v != @p && v % @p == 0 }
    end
    increment_p
    @values
  end

  def increment_p
    @p += 1
  end

  def sieve_to_solution
    sieve until @p == (@max_value / 2).floor
  end

end
