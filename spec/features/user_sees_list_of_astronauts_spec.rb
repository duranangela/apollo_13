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
end
