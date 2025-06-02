require './string_calculator'

RSpec.describe StringCalculator do
  it 'returns 0 for an empty string' do
    expect(StringCalculator.new.add("")).to eq(0)
  end

  it 'returns number itself for a single number' do
    expect(StringCalculator.new.add("5")).to eq(5)
  end

  it 'returns sum of two comma-separated numbers' do
    expect(StringCalculator.new.add("1,2")).to eq(3)
  end

  it 'returns sum of multiple numbers' do
    expect(StringCalculator.new.add("1,2,3,4")).to eq(10)
  end

  it 'handles new lines between numbers' do
    expect(StringCalculator.new.add("1\n2,3")).to eq(6)
  end

  it 'supports custom delimiter' do
    expect(StringCalculator.new.add("//;\n1;2")).to eq(3)
  end
end
