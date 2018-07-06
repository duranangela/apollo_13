require 'rails_helper'

describe Astronaut, type: :model do
  describe 'class methods' do
    it 'should give the average age of all astronauts' do
      astronaut_1 = Astronaut.create(name: 'Neil Armstrong', age: 36, job: 'Commander')
      astronaut_2 = Astronaut.create(name: 'Buzz Aldrin', age: 34, job: 'Pilot')
      astronaut_3 = Astronaut.create(name: 'Other Guy', age: 32, job: 'Other Astronaut')

      expect(Astronaut.average_age).to eq(34)
    end
  end
end
