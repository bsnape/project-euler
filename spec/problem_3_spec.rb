describe Problem3 do

  before(:each) do
    @problem3 = Problem3.new
  end

  it 'should calculate prime numbers (excluding 1 and 2) up to a certain size' do
    @problem3.generate_prime_numbers(1000000).should == [3, 5, 7]
  end

  it 'should calculate prime factors of a given number' do
    @problem3.calculate_prime_factors(13195).should == [5, 7, 13, 29]
  end

  #it 'should find the answer' do
  #  @problem3.calculate_prime_factors(600851475143)[-1].should == 1
  #end

end
