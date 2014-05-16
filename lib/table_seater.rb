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

    results = []
    pairs.each do |key, value|
      if !results.include?(key)
        results << key
      elsif !results.include?(value)
        results << value
      elsif (pairs[value] != nil) && (!results.include?(pairs[value]))
        results << pairs[value]
      end
    end
    results
    # for each person/key, make sure that they sit next to their value
    # check if the value is a key elsewhere in the pairs hash and put them next to their value
    # move to next pair

  end
end