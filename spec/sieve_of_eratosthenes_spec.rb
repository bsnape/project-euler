require_relative '../lib/sieve_of_eratosthenes'

describe SieveOfEratosthenes do

  before(:each) do
    @sieve_of_eratosthenes = SieveOfEratosthenes.new 10
  end

  it 'should create a hash with false values for a given range' do
    @sieve_of_eratosthenes.values.should == {2 => false, 3 => false, 4 => false, 5 => false, 6 => false, 7 => false,
                                             8 => false, 9 => false, 10 => false}
  end

  it 'should mark multiples of p' do
    @sieve_of_eratosthenes.sieve.should == {2 => false, 3 => false, 4 => true, 5 => false, 6 => true, 7 => false,
                                            8 => true, 9 => false, 10 => true}
  end

  it 'should increment p after each sieve' do
    @sieve_of_eratosthenes.sieve
    @sieve_of_eratosthenes.p.should == 3
  end

  it 'should mark multiples of p for subsequent sieves' do
    @sieve_of_eratosthenes.sieve
    @sieve_of_eratosthenes.sieve.should == {2 => false, 3 => false, 4 => true, 5 => false, 6 => true, 7 => false,
                                            8 => true, 9 => true, 10 => true}
  end

  context 'solving primes' do

    it 'should find all primes up to 10' do
      @sieve_of_eratosthenes.sieve_to_solution
      @sieve_of_eratosthenes.primes.should == [2, 3, 5, 7]
    end

  end

end
