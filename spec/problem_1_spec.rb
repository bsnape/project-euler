describe Problem1 do

  before(:each) do
    @problem1 = Problem1.new
  end

  it 'should return true if one number is divisible by another' do
    @problem1.multiple_of?(10, 5).should == true
  end

  it 'should return false if one number is not divisible by another' do
    @problem1.multiple_of?(10, 6).should == false
  end

  it 'should find the sum of all the multiples of 3 or 5 below 1000' do
    @problem1.sum_of_two_multiples(999, 3, 5).should == 233168
  end

end
