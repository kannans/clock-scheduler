class CreateFrequencyPeriods < ActiveRecord::Migration
  def change
    create_table :frequency_periods do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
