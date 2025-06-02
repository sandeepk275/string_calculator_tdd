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
end
