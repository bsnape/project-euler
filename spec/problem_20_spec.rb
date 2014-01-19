describe Problem20 do

  before(:each) do
    @problem20 = Problem20.new
  end

  it 'should recursively calculate the factorial of 10' do
    @problem20.factorial(10).should == 3628800
  end

  it 'should find the sum of the digits for 100!' do
    @problem20.sum_of_digits(@problem20.factorial(100)).should == 648
  end

end
