require_relative '../lib/solutions/FIZ/fizz_buzz'

describe FizzBuzz do

before :each do
  @fizzBuzz = FizzBuzz.new
end

describe 'fizz' do
  it 'returns fizz if a number is divisible by 3' do
    expect(@fizzBuzz.fizz_buzz(9)).to eq 'fizz'
  end

  it 'returns fizz if a number has a 3 in it' do
    expect(@fizzBuzz.fizz_buzz(34)).to eq 'fizz'
  end
end

describe 'buzz' do
  it 'returns buzz if a number is divisible by 5' do
    expect(@fizzBuzz.fizz_buzz(10)).to eq 'buzz'
  end

  it 'returns buzz if a number has a 5 in it' do
    expect(@fizzBuzz.fizz_buzz(52)).to eq 'buzz'
  end
end

describe 'fizz buzz' do
  it 'returns fizz buzz if a number is divisible by 3 and 5' do
    expect(@fizzBuzz.fizz_buzz(90)).to eq 'fizz buzz'
  end

  it 'returns fizz buzz if a number contains a 3 and a 5' do
    expect(@fizzBuzz.fizz_buzz(358)).to eq 'fizz buzz'
  end
end

describe 'deluxe' do
  it 'returns deluxe if a number is greater than 10 and contains all the same digets' do
    expect(@fizzBuzz.fizz_buzz(30)).to eq 'fizz buzz deluxe'
  end

  it 'returns fake deluxe if a number is deluxe and odd' do
    expect(@fizzBuzz.fizz_buzz(33)).to eq 'fizz fake deluxe'
  end
end

describe 'fizz buzz deluxe' do
  it 'returns fizz buzz fake deluxe if a number if in all 3 groups and odd' do
    expect(@fizzBuzz.fizz_buzz(555)).to eq 'fizz buzz fake deluxe'
  end
end

describe 'fizz deluxe' do
  it 'returns fizz fake deluxe if a number is fizz and deluxe and odd' do
    expect(@fizzBuzz.fizz_buzz(33)).to eq 'fizz fake deluxe'
  end
end

describe 'buzz deluxe' do
  it 'returns buzz fake deluxe if a number is buzz and deluxe and odd' do
    expect(@fizzBuzz.fizz_buzz(55)).to eq 'buzz fake deluxe'
  end
end

it 'returns the provided number as a string if not divisible by 3/5/15' do
  expect(@fizzBuzz.fizz_buzz(1)).to eq '1'
end

it 'raises an error if the provided number is outside the range 1-9999' do
  expect{ @fizzBuzz.fizz_buzz(0) }.to raise_error 'Input is outside the permited range'
  expect{ @fizzBuzz.fizz_buzz(10000) }.to raise_error 'Input is outside the permited range'
end

end



