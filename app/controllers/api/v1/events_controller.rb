class Api::V1::EventsController < ApplicationController
  require 'date'
  require 'securerandom'

  # before_action :find_event, only: [:show]

  def show
    @event = Event.find(Url.find_by(url: params[:id]).event_id)
    print(@event.guests[1])
    Event.find(Url.find_by(url: 'VoEaT2JShD1620260925').event_id)

    render json: { status: 'SUCCESS', message: 'Loaded the event', event_data: @event, guests_data: @event.guests, date_rate: @event.count_guests_per_date }
  end

  def create
    str_unixtime = Time.now.to_i.to_s
    shared_url = SecureRandom.alphanumeric(10) + str_unixtime

    ActiveRecord::Base.transaction do
      @event = Event.create(name: event_params["name"], description: event_params["description"])
      now = Time.current
      possible_dates_hash = event_params["possible_dates"].map do |date|
        { event_id: @event.id, date: date, created_at: now, updated_at: now }
      end
      PossibleDate.insert_all(possible_dates_hash)
      @event.create_url(url: shared_url)
    end
    render json: { status: 'SUCCESS', event: @event, url: shared_url }
  end

  private

  # def find_event
  #   @event = Event.find(Url.find_by(url: params[:id]).event_id)
  # end

  def event_params
    params.require(:event).permit(:name, :description, possible_dates: [])
  end
end
