require 'rails_helper'

RSpec.describe Url, type: :model do
  it 'has a valid factory' do
    expect(FactoryBot.build(:url)).to be_valid
  end

  it 'is invalid without a url' do
    url = FactoryBot.build(:url, url: nil)
    url.valid?
    expect(url.errors[:url]).to include("can't be blank")
  end

  it 'is invalid without a event_id' do
    url = FactoryBot.build(:url, event_id: nil)
    url.valid?
    expect(url.errors[:event_id]).to include("can't be blank")
  end

  it 'is invalid with a duplicate url' do
    url_1 = FactoryBot.create(:url)
    url_2 = FactoryBot.build(:url, url: url_1.url)
    url_2.valid?
    expect(url_2.errors[:url]).to include('has already been taken')
  end
end
