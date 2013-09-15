describe Problem4 do

  before(:each) do
    @problem4 = Problem4.new
  end

  it 'should identify a palindrome' do
    @problem4.palindrome?(101).should == true
  end

  it 'should identify non-palindromes' do
    @problem4.palindrome?(102).should == false
  end

  it 'should find the largest palindromic product of two two-digit numbers' do
    @problem4.largest_palindromic_product(2).should == 9009
  end

  it 'should find the largest palindromic product of two three-digit numbers' do
    @problem4.largest_palindromic_product(3).should == 906609
  end

end
