class Api::V1::EventsController < ApplicationController
  require 'date'
  require 'securerandom'

  # before_action :find_event, only: [:show]

  def show
    event_id = Url.find_by(url: params[:id]).event_id
    if event_id.present?
      event = Event.eager_load(possible_dates: :guests)
                   .find_by(id: event_id)
      render json: event, root: "data", adapter: :json
    else
      head :not_found
    end
  end

  def create
    unixtime = Time.now.to_i
    shared_url = SecureRandom.alphanumeric(10) + unixtime.to_s

    ActiveRecord::Base.transaction do
      event = Event.create(name: event_params['name'], description: event_params['description'])
      now = Time.current
      possible_dates_hash = event_params['possible_dates'].map do |date|
        { event_id: event.id, date: date, created_at: now, updated_at: now }
      end
      PossibleDate.insert_all(possible_dates_hash)
      event.create_url(url: shared_url)
      render json: event, serializer: EventCreateSerializer, root: "data", adapter: :json
    end
    rescue ActiveRecord::RecordInvalid
      head :unprocessable_entity
  end

  private

  # def find_event
  #   @event = Event.find(Url.find_by(url: params[:id]).event_id)
  # end

  def event_params
    params.require(:event).permit(:name, :description, possible_dates: [])
  end
end
