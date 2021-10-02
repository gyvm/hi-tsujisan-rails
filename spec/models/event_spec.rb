require 'rails_helper'

RSpec.describe Event, type: :model do
  it "is valid with name, and event_date" do
    event = Event.new(
      name: "RSpec勉強会",
      event_date: ["2021-09-21", "2021-09-22", "2021-09-23", "2021-09-24", "2021-09-25"]
    )
    expect(event).to be_valid
  end

  it "is invalid without name" do
    event = Event.new(name: nil)
    event.valid? 
    expect(event.errors[:name]).to include("can't be blank")
  end

end
