class CreatePossibleDateFromGuestPossibleDates < ActiveRecord::Migration[6.1]
  def change
    add_reference :guest_possible_dates, :possible_date, foreign_key: true
  end
end
