class CreatePossibleDates < ActiveRecord::Migration[6.1]
  def change
    create_table :possible_dates do |t|
      t.string 'date', null: false
      t.boolean 'deleted', default: false, null: false
      t.references :event, foreign_key: true
      t.timestamps
    end
  end
end
