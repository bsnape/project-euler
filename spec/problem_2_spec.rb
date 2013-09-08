describe Problem2 do

  before(:each) do
    @problem2 = Problem2.new
  end

  it 'should generate a valid Fibonacci sequence up to a max value' do
    @problem2.generate_fibonacci_sequence(89).should == [1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
  end

  it 'should return the sum of the even values of an array' do
    @problem2.sum_of_even_values([1, 2, 3, 5, 8, 13, 21, 34]).should == 44
  end

  it 'should find the the sum of the even-valued terms in a Fibonacci sequence of four million' do
    sequence = @problem2.generate_fibonacci_sequence(4000000)
    @problem2.sum_of_even_values(sequence).should == 4613732
  end

end
