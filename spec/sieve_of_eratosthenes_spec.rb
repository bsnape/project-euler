require_relative '../lib/sieve_of_eratosthenes'

describe SieveOfEratosthenes do

  before(:each) do
    @sieve_of_eratosthenes = SieveOfEratosthenes.new 10
  end

  it 'should create an array of numbers from 2 to a specified max value' do
    @sieve_of_eratosthenes.values.should == [2, 3, 4, 5, 6, 7, 8, 9, 10]
  end

  it 'should delete multiples of p' do
    @sieve_of_eratosthenes.sieve.should == [2, 3, 5, 7, 9]
  end

  it 'should increment p after each sieve' do
    @sieve_of_eratosthenes.sieve
    @sieve_of_eratosthenes.p.should == 3
  end

  it 'should delete multiples of an incremented p for subsequent sieves' do
    @sieve_of_eratosthenes.sieve
    @sieve_of_eratosthenes.sieve.should == [2, 3, 5, 7]
  end

  it 'should find all primes up to 10' do
    @sieve_of_eratosthenes.sieve_to_solution
    @sieve_of_eratosthenes.values.should == [2, 3, 5, 7]
  end

  context 'solving for larger ranges' do

    before(:each) do
      @sieve_of_eratosthenes = SieveOfEratosthenes.new 1000000
    end

    it 'should solve primes up to 1000' do
      @sieve_of_eratosthenes.sieve_to_solution
      @sieve_of_eratosthenes.values.should == [2, 3, 5, 7]
    end

  end

end
