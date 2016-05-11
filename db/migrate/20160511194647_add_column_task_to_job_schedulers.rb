class AddColumnTaskToJobSchedulers < ActiveRecord::Migration
  def change
    add_column :job_schedulers, :task, :string
  end
end
