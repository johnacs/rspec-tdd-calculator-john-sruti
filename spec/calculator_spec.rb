require_relative 'spec_helper'
require_relative '../lib/calculator'

describe Calculator do

  before(:each) do
    # initialize calculator
    @calculator = Calculator.new(1)
    # @calculator2 = Calculator.new(2)
  end

  describe "Initialization" do
      it 'is an instance of the Calculator class' do
        expect(@calculator).to be_instance_of(Calculator)
      end

     [:result, :reset ,:add].each do |method|
     it "should respond to #{method}" do
       expect(@calculator).to respond_to(method)
     end
   end

      it 'argument should be readonly' do
        expect(@calculator.num).to eq(1)
      end
    end

  # Tests go here

  describe ".result" do
    it 'should return the current result' do
    expect(@calculator.result).to eq(1)
  end
end

describe ".reset" do
  it 'should reset the calculator' do
    expect(@calculator.reset(0)).to eq(0)
  end
end

describe ".add" do
  it "should only accept a number as argument" do
       expect{@calculator.add("something")}.to raise_error(TypeError)
     end
  it 'should add the value to the result' do
    expect(@calculator.add(12)).to eq(13)
  end
end

describe ".subtract" do
  it "should only accept a number as argument" do
       expect{@calculator.subtract("something")}.to raise_error(TypeError)
     end
  it 'should subract the value to the result' do
    expect(@calculator.subtract(1)).to eq(0)
  end
end

end
