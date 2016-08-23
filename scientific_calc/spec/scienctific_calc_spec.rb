#!/usr/bin/env ruby

require "../lib/scientific_calc"
require "rspec"

RSpec.describe Calc do
  # it "0.1.0" do
  #   expect(ScienctificCalc::VERSION).not_to be nil
  # end

  it "Sum 1 + 1" do
    calc = Calc.new
    test = ["1","+","1"]
    Calc::basics(test)
    expect(calc.result).to eq(2)
  end

   it "Test sum fail" do
       test = ["1","+","1"]
     result = Calc::basics(test)
     expect(result).to eq(3)
   end
end
