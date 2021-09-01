class DeletePossibleDates < ActiveRecord::Migration[6.1]
  def change
    remove_column :events, :possible_dates
    remove_column :guests, :possible_dates
  end
end
