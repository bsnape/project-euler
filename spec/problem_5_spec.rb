describe Problem5 do

  it 'should return the smallest number divisible by the numbers 1 to 10' do
    divisors = (1..10).to_a
    Problem5.new(divisors).find_smallest_divisible_number.should == 2520
  end

  it 'should return the smallest number divisible by the numbers 1 to 20' do
    divisors = (1..20).to_a
    Problem5.new(divisors).find_smallest_divisible_number.should == 232792560
  end

end

