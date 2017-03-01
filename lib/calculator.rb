class Calculator
  # your class goes here
  attr_reader :num

  # attr_accessor :result


  def initialize(num)
    @buffer = []
    @buffer.push(num)
    @num = num
    @bool= false
    @lastOperation =[]
  end

  def result
    @num
  end

  def reset(arg)
    @num = arg
  end

  def add(arg)
    raise TypeError unless arg.is_a? Numeric
    @num = @num + arg
    @buffer.push(@num)
    @lastOperation.push(self)
    self
  end

  def subtract(arg)
    raise TypeError unless arg.is_a? Numeric
    @num = @num - arg
      @buffer.push(@num)
    self
  end

  def multiply(arg)
    raise TypeError unless arg.is_a? Numeric
    @num = @num * arg
      @buffer.push(@num)
    self
  end

  def divide(arg)
    # raise Exception.new("Cannot divide by 0") if arg.eq(0)
    raise TypeError unless arg.is_a? Numeric
    @num = @num/arg
      @buffer.push(@num)
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

  def undo
    @num = @buffer[-2]
    @bool = true
  end

  def redo
    if (@bool)
      @lastOperation[-1]
      # case @operation[0]
      # when 'add'
      #   add(@operation[1])
      # when 'subtract'
      #   subtract(@operation[1])
      # when 'multiply'
      #   multiply(@operation[1])
      # when 'divide'
      #   divide(@operation[1])
      # end
      @bool = false
    end

  end

end
