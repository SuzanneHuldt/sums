class Main
  def element1(num)
    operand1 = Array.new(num)
    return operand1
  end

  def element2(num)
    operand2 = Array.new(num)
    return operand2
  end

  def add(num1, num2 )
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
    stash = []
    operands = []
    is_digit = /\d/
    string = input.split('')
    string.push(' ')
    for x in string
      y = string.index(x)
      stash.push([x, string[(y+1)]])
    end
    for x in stash
      if x[1] == ' ' && !!(x[0] =~ is_digit)
        operands.push(x[0])
      end
    end
    return operands
  end

end
