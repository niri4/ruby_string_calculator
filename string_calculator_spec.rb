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
  end
end