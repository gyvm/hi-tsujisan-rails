class Api::V1::EventsController < ApplicationController
  require 'date'
  require 'securerandom'

  def create
    str_unixtime = Time.now.to_i.to_s
    shared_url = SecureRandom.alphanumeric(10) + str_unixtime

    ActiveRecord::Base.transaction do
      @event = Event.create(event_params)
      @event.create_url(url: shared_url)
    end
    render json: { status: 'SUCCESS', event: @event }
  rescue StandardError => e
    render json: { status: 'FAILED', error: e.message }
  end

  private

  def event_params
    params.require(:event).permit(:name, :description, possible_dates: {})
  end
end
