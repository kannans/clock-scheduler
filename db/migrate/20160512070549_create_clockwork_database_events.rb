class CreateClockworkDatabaseEvents < ActiveRecord::Migration
  def change
    create_table :clockwork_database_events do |t|
      t.integer :frequency_quantity
      t.belongs_to :frequency_period, index: true, foreign_key: true
      t.string :at

      t.timestamps null: false
    end
  end
end
