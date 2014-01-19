describe Problem25 do

  it 'should return the first term in a Fibonacci sequence that contains three digits' do
    Problem25.new.get_first_fibonacci_term_of_size(3).should == 12
  end

  it 'should return the first term in a Fibonacci sequence that contains 1000 digits' do
    Problem25.new.get_first_fibonacci_term_of_size(1000).should == 4782
  end

end
