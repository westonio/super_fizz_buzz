require './lib/super_fizz_buzz'

RSpec.describe 'something' do
  it 'is an instance' do
    sfb = SuperFizzBuzz.new

    expect(sfb).to be_an_instance_of(SuperFizzBuzz)
  end

  it 'returns SuperFizzBuzz if evenly divisible by 3, 5, and 7' do
    sfb = SuperFizzBuzz.new  

    expect(sfb.output(105)).to eq("SuperFizzBuzz")
  end

  it 'returns SuperFizz if evenly dividible by 5 and 7' do
    sfb = SuperFizzBuzz.new  

    expect(sfb.output(70)).to eq("SuperFizz")
  end

  it 'returns SuperBuzz if evenly divisible by 3 and 5' do
    sfb = SuperFizzBuzz.new  

    expect(sfb.output(60)).to eq("SuperBuzz")
  end

  it 'returns Fizz if evenly divisible by 3' do
    sfb = SuperFizzBuzz.new  

    expect(sfb.output(9)).to eq("Fizz")
  end

  it 'returns Buzz if evenly divisible by 5' do
    sfb = SuperFizzBuzz.new  

    expect(sfb.output(10)).to eq("Buzz")
  end

  it 'returns Super if evenly divisible by 7' do
    sfb = SuperFizzBuzz.new  

    expect(sfb.output(14)).to eq("Super")
  end

  it 'otherwise returns just the number' do
    sfb = SuperFizzBuzz.new  

    expect(sfb.output(17)).to eq(17)
  end

  it 'can output a new range' do
    sfb = SuperFizzBuzz.new

    expect(sfb.output_range(11,20)).to eq([11, "Fizz", 13, "Super", "SuperBuzz", 16, 17, "Fizz", 19, "Buzz"])
  end
end