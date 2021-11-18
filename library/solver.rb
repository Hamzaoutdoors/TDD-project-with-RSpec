class Solver
  def factorial(number)
    raise StandardError, 'the method accepts just positive numbers or 0' if number.negative?

    if [1, 0].include?(number)
      1
    else
      number * factorial(number - 1)
    end
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
