class Api::V1::GuestsController < ApplicationController
  def create
    ActiveRecord::Base.transaction do
      @event = Event.find(Url.find_by(url: params[:url]).event_id)
      @event.guests.create(guest_params)
    end
    render json: { status: 'SUCCESS', guest: @event.guests }
  rescue StandardError => e
    render json: { status: 'FAILED', error: e.message }
  end

  private

  def guest_params
    params.require(:guest).permit(:nickname, :comment, possible_dates: {})
  end
end
