require_relative 'spec_helper'
require_relative '../lib/calculator'

describe Calculator do
  before(:each) do
    # initialize calculator
    @calculator = Calculator.new(1)
    @calculator2 = Calculator.new(4)
  end

  describe 'Initialization' do
    it 'is an instance of the Calculator class' do
      expect(@calculator).to be_instance_of(Calculator)
    end

    [:result, :reset, :add, :subtract, :multiply, :divide, :operation, :undo].each do |method|
      it "should respond to #{method}" do
        expect(@calculator).to respond_to(method)
      end
    end

    it 'argument should be readonly' do
      expect(@calculator.num).to eq(1)
    end
  end

  # Tests go here

  describe '.result' do
    it 'should return the current result' do
      expect(@calculator.result).to eq(1)
    end
  end

  describe '.reset' do
    it 'should reset the calculator' do
      expect(@calculator.reset(0)).to eq(0)
    end
  end

  describe '.add' do
    it 'should only accept a number as argument' do
      expect { @calculator.add('something') }.to raise_error(TypeError)
    end
    it 'should add the value to the result' do
      expect(@calculator.add(12).result).to eq(13)
    end
  end

  describe '.subtract' do
    it 'should only accept a number as argument' do
      expect { @calculator.subtract('something') }.to raise_error(TypeError)
    end
    it 'should subract the value to the result' do
      expect(@calculator.subtract(1).result).to eq(0)
    end
  end

  describe '.multiply' do
    it 'should only accept a number as argument' do
      expect { @calculator.multiply('something') }.to raise_error(TypeError)
    end
    it 'should subract the value to the result' do
      expect(@calculator.multiply(5).result).to eq(5)
    end
  end

  describe '.divide' do
    # it "should only accept a number as argument" do
    #      expect{@calculator.divide("something")}.to raise_error(TypeError)
    #    end
    it 'should not be equal to 0' do
      expect { @calculator.divide('Something').result }.to raise_error(TypeError)
    end
    it 'should divide the value to the result' do
      expect(@calculator2.divide(2).result).to eq(2)
    end
  end

  describe 'chain' do
    it 'should return the chained methods' do
      expect(@calculator.add(1).multiply(2).result).to eq(4)
    end
  end

  describe '.operation' do
    it 'would apply the addition operation with the value of x' do
      expect(@calculator.operation('add', 2).result).to eq(3)
    end
  end

  describe '.undo' do
    it 'should undo the current operation' do
      @calculator.add(10).result
      expect(@calculator.undo.result).to eq(1)
    end
  end

  describe '.redo' do
    it 'should redo the undoed operation' do
      @calculator.add(31)
      # @calculator.subtract(1).result
      @calculator.undo
      expect(@calculator.redo.result).to eq(32)
    end
  end

end
