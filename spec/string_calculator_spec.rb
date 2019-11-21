require './string_calculator'

RSpec.describe Calculator do
  it "returns 0 when empty" do
    calculate = Calculator.new

    result = calculate.add

    expect(result).to eq(0)
  end

  it "returns number when one number is given" do
    calculate = Calculator.new

    result = calculate.add("4")

    expect(result).to eq(4)
  end

  it "returns the sum of two numbers" do
    calculate = Calculator.new

    result = calculate.add("4,8")

    expect(result).to eq(12)
  end

  it "returns the sum of all numbers" do

    calculate = Calculator.new

    result = calculate.add("4,8,10")

    expect(result).to eq(22)
  end

  it "handle new lines between numbers" do

    calculate = Calculator.new

    result = calculate.add("1\n2,3")

    expect(result).to eq(6)
  end

  it "support different delimiters" do

    calculate = Calculator.new

    result = calculate.add("//;\n1;2")

    expect(result).to eq(3)
  end

  xit "displays error when negative" do

    calculate = Calculator.new

    result = calculate.add(1,4,-1)

    expect(result).to eq("negatives not allowed: -1")
  end
end

