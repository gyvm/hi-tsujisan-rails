class AddStatusToGuestPossibleDates < ActiveRecord::Migration[6.1]
  def change
    add_column :guest_possible_dates, :status, :integer, null: false
  end
end
