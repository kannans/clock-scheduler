require File.expand_path(File.dirname(__FILE__) + "/environment")

set :output, "#{path}/log/cron_log.log"
set :environment, Rails.env.to_sym

JobScheduler.all.each do |job|
  every job.frequency.to_sym, at: job.event_at.localtime.strftime("%H:%M %P") do
    runner "#{job.task}" #set arguments
  end
  #Project.destroy_data
end

#
# every 2.hours do
#   command "/usr/bin/some_great_command"
#   runner "MyModel.some_method"
#   rake "some:great:rake:task"
# end
#