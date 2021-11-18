require_relative '../library/solution'

describe Solution do
  before :each do
    @solution = Solution.new
  end

    it 'returns a Solution object' do
      expect(@solution).to be_an_instance_of(Solution)
    end
  end

  describe '#factorial' do
    it 'takes parameter and returns a factorial of given number' do
      expect(@solution.factorial(7)).to eql 5040
    end

    it 'factorial of 0 is 1' do
      expect(@solution.factorial(0)).to eql 1
    end

    it 'raise an exception  if a negative integer is given' do
      expect { @solution.factorial(-7) }.to raise_error(StandardError)
    end
  end

  describe '#reverse' do
    it 'takes string parameter and returns reversed' do
      expect(@solution.reverse('Hello')).to eql 'olleH'
    end

    it 'takes string parameter and returns reversed' do
      expect(@solution.reverse('reverse')).to eql 'esrever'
    end

    it 'takes string parameter and returns reversed' do
      expect(@solution.reverse('12345')).to eql '54321'
    end
  end

  describe '#fizzbuzz' do
    it 'takes a integer parameter and returns string following given rules' do
      expect(@solution.fizzbuzz(6)).to eql 'fizz'
    end

    it 'takes a integer parameter and returns string following given rules' do
      expect(@solution.fizzbuzz(10)).to eql 'buzz'
    end

    it 'takes a integer parameter and returns string following given rules' do
      expect(@solution.fizzbuzz(15)).to eql 'fizzbuzz'
    end

    it 'takes a integer parameter and returns string following given rules' do
      expect(@solution.fizzbuzz(7)).to eql '7'
    end
  end
end