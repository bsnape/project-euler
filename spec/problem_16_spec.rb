describe Problem16 do

  it 'should find the sum of digits of 2^15' do
    Problem16.new.sum_of_digits(2**15).should == 26
  end

  it 'should find the sum of digits of 2^1000' do
    Problem16.new.sum_of_digits(2**1000).should == 1366
  end

end
