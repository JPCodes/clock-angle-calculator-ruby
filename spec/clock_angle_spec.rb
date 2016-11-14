require('rspec')
require('clock_angle')

describe('String#clock_angle') do

  it('it will return the degrees for a given hour') do
    expect("2.5".clock_angle()).to(eq([60, 180, 120]))
  end

  it('it will return the degrees for the minutes') do
    expect('6'.clock_angle()).to(eq([180, 0, 180]))
  end

  it('it will return the degrees between the hour and minute hands') do
    expect('9.5'.clock_angle()).to(eq([270, 180, 90]))
  end

end
