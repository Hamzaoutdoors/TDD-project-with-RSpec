require_relative '../library/solver'

RSpec.describe Solver do
  before :all do
    @solver = Solver.new
  end

  it 'returns a Solver object' do
    expect(@solver).to be_an_instance_of(Solver)
  end
end

describe '#factorial' do
  before :each do
    @solver = Solver.new
  end

  it 'takes parameter and returns a factorial of given number' do
    expect(@solver.factorial(7)).to eql 5040
  end

  it 'factorial of 0 is 1' do
    expect(@solver.factorial(0)).to eql 1
  end

  it 'raise an exception  if a negative integer is given' do
    expect { @solver.factorial(-7) }.to raise_error(StandardError)
  end
end

describe '#reverse' do
  before :each do
    @solver = Solver.new
  end

  it 'takes string parameter and returns reversed' do
    expect(@solver.reverse('Hello')).to eql 'olleH'
  end

  it 'takes string parameter and returns reversed' do
    expect(@solver.reverse('reverse')).to eql 'esrever'
  end

  it 'takes string parameter and returns reversed' do
    expect(@solver.reverse('12345')).to eql '54321'
  end
end

describe '#fizzbuzz' do
  before :each do
    @solver = Solver.new
  end
  it 'takes a integer parameter and returns string following given rules' do
    expect(@solver.fizzbuzz(6)).to eql 'fizz'
  end

  it 'takes a integer parameter and returns string following given rules' do
    expect(@solver.fizzbuzz(10)).to eql 'buzz'
  end

  it 'takes a integer parameter and returns string following given rules' do
    expect(@solver.fizzbuzz(15)).to eql 'fizzbuzz'
  end

  it 'takes a integer parameter and returns string following given rules' do
    expect(@solver.fizzbuzz(7)).to eql '7'
  end
end
