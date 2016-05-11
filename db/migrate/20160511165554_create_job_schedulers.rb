class CreateJobSchedulers < ActiveRecord::Migration
  def change
    create_table :job_schedulers do |t|
      t.datetime :event_at
      t.integer :frequency

      t.timestamps null: false
    end
  end
end
