require 'rspec'
require_relative 'string_calculator'

RSpec.describe StringCalculator do
  describe ".add" do
    it "returns 0 for an empty string" do
      expect(StringCalculator.add("")).to eq(0)
    end

    it "returns the number itself for a single number" do
      expect(StringCalculator.add("1")).to eq(1)
      expect(StringCalculator.add("5")).to eq(5)
    end

    it "returns the sum of two comma-separated numbers" do
      expect(StringCalculator.add("1,2")).to eq(3)
      expect(StringCalculator.add("10,20")).to eq(30)
    end

    it "returns the sum of multiple comma-separated numbers" do
      expect(StringCalculator.add("1,2,3,4")).to eq(10)
      expect(StringCalculator.add("5,10,15,20")).to eq(50)
    end
  
    it "handles new lines as delimiters" do
      expect(StringCalculator.add("1\n2,3")).to eq(6)
      expect(StringCalculator.add("10\n20\n30")).to eq(60)
    end

    it "supports custom delimiters defined with // syntax" do
      expect(StringCalculator.add("//;\n1;2")).to eq(3)
      expect(StringCalculator.add("//|\n4|5|6")).to eq(15)
      expect(StringCalculator.add("//-\n2-3-4")).to eq(9)
    end
  end
end