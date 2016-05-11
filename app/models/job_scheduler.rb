class JobScheduler < ActiveRecord::Base
  enum frequency: %i(day)

  def update_cron
    system "whenever --update-crontab"
  end

  def create_projects
    Project.create_data
  end
end
