class TableSeater
  def initialize(people)
    @people = people
    p @people.length-2
  end

  def arrange
    i = 0
    first_half = []
    second_half = []

    @people.each do |person|
      if  i%2 == 0
        first_half << person
      else
        second_half << person
      end
      i += 1
    end
    first_half.concat(second_half)
  end
end