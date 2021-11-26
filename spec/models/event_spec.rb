require 'rails_helper'

RSpec.describe Event, type: :model do
  it 'has a valid factory' do
    expect(FactoryBot.build(:event)).to be_valid
  end

  it 'is invalid without name' do
    event = FactoryBot.build(:event, name: nil)
    event.valid?
    expect(event.errors[:name]).to include("can't be blank")
  end
end
