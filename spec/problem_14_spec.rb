describe Problem14 do

  before(:each) do
    @problem14 = Problem14.new
  end

  it 'should identify odd numbers' do
    @problem14.even?(7).should be_false
  end

  it 'should identify even numbers' do
    @problem14.even?(10).should be_true
  end

  it 'should apply the even rule correctly' do
    @problem14.odd_rule(11).should == 34
  end

  it 'should apply the odd rule correctly' do
    @problem14.even_rule(20).should == 10
  end

  it 'should find the chain length for a sequence starting with 13' do
    @problem14.calculate_chain_length(13).should == 10
  end

  it 'should find the longest chain for starting numbers under 1 million' do
    longest_chain_starting_number = 0
    longest_chain_length = 0

    (13..999999).each do |number|
      chain_length = @problem14.calculate_chain_length(number)
      if chain_length > longest_chain_length
        longest_chain_length = chain_length
        longest_chain_starting_number = number
      end
    end

    longest_chain_starting_number.should == 837799
  end

end
