class Main
  def initialize
    @stash = []
    @operands = []
    @operator = []
    @is_digit = /\d/
    @is_plus = /\+/
  end
  def element1(num)
    operand1 = Array.new(num)
    return operand1
  end

  def element2(num)
    operand2 = Array.new(num)
    return operand2
  end

  def add(num1, num2)
     result = concat_array(element1(num1), element2(num2))
    return result.length
  end

  def concat_array(arr1, arr2)
    for x in arr1
      arr2.push(x)
    end
    return arr2
  end

  def parse(input)
    string = input.split('')
    string.push(' ')
    single(string)
    plus(string)
  end

  def single(string)
    for x in string
      y = string.index(x)
      @stash.push([x, string[(add(y,1))]])
    end
    for x in @stash
      if x[1] == ' ' && !!(x[0] =~ @is_digit)
        @operands.push(x[0])
      end
    end
  end

  def plus(string)
    for x in @stash
      if x[1] == ' ' && !!(x[0] =~ @is_plus)
        @operator.push(x[0])
      end
    end
  end

  def do_sum(input)
    parse(input)
    if @operator[0] = "+"
      return add(@operands[0].to_i, @operands[1].to_i)
    end
  end
end
