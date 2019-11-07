require './string_calculator'

RSpec.describe Calculator do
  it "returns 0 when empty" do
    calculate = Calculator.new

    result = calculate.add

    expect(result).to eq(0)
  end

  it "returns number when one number is given" do
    calculate = Calculator.new

    result = calculate.add(4)

    expect(result).to eq(4)
  end

  it "returns the sum of two numbers" do
    calculate = Calculator.new

    result = calculate.add(4,8)

    expect(result).to eq(12)
  end
end