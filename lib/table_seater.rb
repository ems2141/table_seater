class TableSeater
  def initialize(people)
    @people = people
    p @people.length-2
  end

  def arrange
    i = 0
    pairs = {}
    while i < @people.length-2 do
      @people.each do |person|
        person_to_sit_by = @people[i+2]
        if person_to_sit_by != nil
          pairs[person] = person_to_sit_by
        end
        i += 1
      end
      i
    end
    pairs

    # iterate through each pair
    # for each person/key, make sure that they sit next to their value
    # check if the value is a key and put them next to their value
    # move to next pair

  end
end