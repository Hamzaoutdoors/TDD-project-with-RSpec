class Solution
  def factorial(num)
    raise StandardError, 'This method only accepts 0 and positive integers' if num.negative?

    result = 1
    while num.positive?
      result *= num
      num -= 1
    end

    result
  end

  def reverse(word)
    word.reverse
  end

  def fizzbuzz(num)
    num_divisible_by3 = num.modulo(3).zero?
    num_divisible_by5 = num.modulo(5).zero?

    if num_divisible_by3 && num_divisible_by5
      'fizzbuzz'
    elsif num_divisible_by5
      'buzz'
    elsif num_divisible_by3
      'fizz'
    else
      num.to_s
    end
  end
end