class Calculator
  # your class goes here
  attr_reader :num

  def initialize(num)
    @num = num
  end

  def result
    @num
  end

  def reset(arg)
    @num = arg
  end

  def add(arg)
    raise TypeError unless arg.is_a? Fixnum
    @num = @num + arg
    self
  end

  def subtract(arg)
    raise TypeError unless arg.is_a? Fixnum
    @num = @num - arg
    self
  end

  def multiply(arg)
    raise TypeError unless arg.is_a? Numeric
    @num = @num * arg
    self
  end

  def divide(arg)
    # raise Exception.new("Cannot divide by 0") if arg.eq(0)
    raise TypeError unless arg.is_a? Numeric
    @num = @num/arg
    self
  end

  def operation(arg1, arg2)
    case arg1
    when 'add'
      add(arg2)
    when 'subtract'
      subtract(arg2)
    when 'divide'
      divide(arg2)
    when 'multiply'
      multiply(arg2)
    end
  end

end
