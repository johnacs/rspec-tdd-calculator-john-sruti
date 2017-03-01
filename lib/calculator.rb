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
    @result = arg
  end

  def add(arg)
    @result = @num + arg
  end

end
