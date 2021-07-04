class CreateGuestPossibleDates < ActiveRecord::Migration[6.1]
  def change
    create_table :guest_possible_dates do |t|
      t.references :guest_possible_date, foreign_key: true
      t.references :guest, foreign_key: true
      t.timestamps
    end
  end
end
