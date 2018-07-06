require 'rails_helper'

describe 'astronauts index' do
  it 'user sees a list of astronauts' do
    astronaut_1 = Astronaut.create(name: 'Neil Armstrong', age: 36, job: 'Commander')
    astronaut_2 = Astronaut.create(name: 'Buzz Aldrin', age: 34, job: 'Pilot')

    visit '/astronauts'

    expect(page).to have_content(astronaut_1.name)
    expect(page).to have_content(astronaut_1.age)
    expect(page).to have_content(astronaut_1.job)
    expect(page).to have_content(astronaut_2.name)
    expect(page).to have_content(astronaut_2.age)
    expect(page).to have_content(astronaut_2.job)
  end
  it 'user sees the average age for all astronauts' do
    astronaut_1 = Astronaut.create(name: 'Neil Armstrong', age: 36, job: 'Commander')
    astronaut_2 = Astronaut.create(name: 'Buzz Aldrin', age: 34, job: 'Pilot')
    astronaut_3 = Astronaut.create(name: 'Other Guy', age: 32, job: 'Other Astronaut')

    visit '/astronauts'

    expect(page).to have_content(Astronaut.average_age)
  end
  it 'user sees list of space missions for each astronaut' do
    astronaut_1 = Astronaut.create(name: 'Neil Armstrong', age: 36, job: 'Commander')
    space_mission_1 = astronaut_1.space_missions.create(title: 'Apollo 13', trip_length: 760)
    space_mission_2 = astronaut_1.space_missions.create(title: 'Capricorn 4', trip_length: 200)

    visit '/astronauts'

    expect(page).to have_content(space_mission_1.title)
    expect(page).to have_content(space_mission_2.title)
  end

end
