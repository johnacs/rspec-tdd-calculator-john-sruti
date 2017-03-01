require_relative 'spec_helper'
require_relative '../lib/calculator'

describe Calculator do

  before(:each) do
    # initialize calculator
    @calculator = Calculator.new(1)
  end

  describe "Initialization" do
      it 'is an instance of the Calculator class' do
        expect(@calculator).to be_instance_of(Calculator)
      end
      [:result, :reset].each do |method|
     it "should respond to #{method}" do
       expect(@calculator).to respond_to(method)
     end
   end
 end

  # Tests go here

  describe  ".result" do
    it 'should return the current result' do
    expect(@calculator.result).to eq(1)
  end
end

describe ".reset" do
  it 'should reset the calculator' do
    expect(@calculator.reset(0)).to eq(0)
  end
end
end
