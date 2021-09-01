class AddColumnsToTables < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :name, :string
    add_column :events, :description, :text
    add_column :events, :possible_dates, :json
    add_column :events, :event_date, :string
    add_column :urls, :url, :string
    add_column :guests, :nickname, :string
    add_column :guests, :comment, :text
    add_column :guests, :possible_dates, :json
    add_reference :urls, :event, foreign_key: true
    add_reference :guests, :event, foreign_key: true
  end
end
