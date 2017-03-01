class Calculator
  # your class goes here
  attr_reader :num
  attr_accessor :result

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

end
