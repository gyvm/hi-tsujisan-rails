class Api::V1::GuestsController < ApplicationController
  def create
    ActiveRecord::Base.transaction do
      @event = Event.find(Url.find_by(url: params[:url]).event_id)
      @event.guests.create

      render json: { status: 'SUCCESS', guest: @event.guests }
    end
  end

  private

  def guest_params
    # params.require(:guest).permit(:name, :comment, events_id: @event_id, possible_dates: {})
    params.require(:guest).permit(:name, :comment, possible_dates: {})
  end
end
