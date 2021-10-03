require 'rails_helper'

RSpec.describe PossibleDate, type: :model do
  it "has a valid factory" do
    expect(FactoryBot.build(:possible_date)).to be_valid
  end

  it "is invalid without a date" do
    possible_date = FactoryBot.build(:possible_date, date: nil)
    possible_date.valid?
    expect(possible_date.errors[:date]).to include("can't be blank")
  end

  it "is invalid without a event_id" do
    possible_date = FactoryBot.build(:possible_date, event_id: nil)
    possible_date.valid?
    expect(possible_date.errors[:event_id]).to include("can't be blank")
  end

  # 同イベントの日付の重複を検知する
  # it "does something with multiple date" do
  #   possible_date_1 = FactoryBot.create(:possible_date)
  #   possible_date_2 = FactoryBot.build(:possible_date)
  #   possible_date_2.valid?
  #   expect(possible_date_2.errors[:date]).to include("has already been taken")
  # end

end
