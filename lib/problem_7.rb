require 'prime'

class Problem7

  def find_nth_prime(prime)
    Prime.first(prime)[-1]
  end

end
