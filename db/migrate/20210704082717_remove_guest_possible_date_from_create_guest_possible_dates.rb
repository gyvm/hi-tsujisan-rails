class RemoveGuestPossibleDateFromCreateGuestPossibleDates < ActiveRecord::Migration[6.1]
  def change
    remove_reference :guest_possible_dates, :guest_possible_date, null: false, foreign_key: true
  end
end
