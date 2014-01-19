class Problem25

=begin
The Fibonacci sequence is defined by the recurrence relation:

F[n] = F[n-1] + F[n-2], where F[1] = 1 and F[2] = 1.
Hence the first 12 terms will be:

F1 = 1
F2 = 1
F3 = 2
F4 = 3
F5 = 5
F6 = 8
F7 = 13
F8 = 21
F9 = 34
F10 = 55
F11 = 89
F12 = 144

The 12th term, F12, is the first term to contain three digits.

What is the first term in the Fibonacci sequence to contain 1000 digits?
=end

  def get_first_fibonacci_term_of_size(size)
    sequence = [1, 1]
    term_count = 2

    until sequence[-1].to_s.size == size
      sequence << sequence[-1] + sequence[-2]
      term_count += 1
    end

    term_count
  end

end
