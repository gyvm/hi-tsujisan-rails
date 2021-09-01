class Api::V1::GuestsController < ApplicationController
  def create
    event = Event.find(Url.find_by(url: params[:url]).event_id)

    ActiveRecord::Base.transaction do
      guest = event.guests.create(nickname: guest_params["nickname"], comment: guest_params["comment"])

      now = Time.current
      guest_possible_dates_hash = event.possible_dates.map do |date|
        # { possible_date_id: date.id, guest_id: guest.id, status: guest_params["possible_dates"][date.id.to_s], created_at: now, updated_at: now }
        { possible_date_id: date.id, guest_id: guest.id, status: guest_params["possible_dates"][date.id.to_s].to_i, created_at: now, updated_at: now }
      end

      GuestPossibleDate.insert_all(guest_possible_dates_hash)
    end

    render json: { status: 'SUCCESS', guest: event.guests }
  end

  private

  def guest_params
    params.require(:guest).permit(:nickname, :comment, possible_dates: {})
  end
end
