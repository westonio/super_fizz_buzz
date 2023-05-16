# Iterate through the numbers 1 to 1000
# For each one, print the output according to the rules of Super Fizz Buzz
class SuperFizzBuzz
  def initialize(range = (1..1000))
    @range = range
  end

  def output(i)
    if i % 7 == 0 && i % 5 == 0 && i % 3 == 0
      "SuperFizzBuzz"
    elsif i % 7 == 0 && i % 5 == 0
      "SuperFizz"
    elsif i % 5 == 0 && i % 3 == 0
      "SuperBuzz"
    elsif i % 3 == 0
      "Fizz"
    elsif i % 5 == 0
      "Buzz"
    elsif i % 7 == 0
      "Super"
    else
      i
    end
  end

  def returns
    @range.each do |i|
      output(i)
    end
  end

  def output_range(first, last)
    @range = first..last
    @range.map do |i|
      output(i)
    end
  end
end


