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
    end

  # Tests go here

  describe  ".result" do
    it 'should return the current result'
    expect(@calculator.result).to eq(1)
  end
end
