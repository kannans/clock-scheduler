# require 'clockwork'

# module Clockwork
#   configure do |config|
#     config[:tz] = 'UTC'
#   end
#
#   handler do |job|
#     puts "Running #{job} - #{Time.now}"
#     case job
#     when "project_create.job"
#       Project.create_data
#     when "project_destroy.job"
#       Project.destroy_data
#     when "frequent.job"
#       puts "this is cool"
#     end
#   end
#
#   every(1.minutes, 'less.frequent.job') do
#     # every(1.hour, 'hourly.job')
#     JobScheduler.all.each do |job|
#       every(5.minutes, 'project_create.job')
#       every(10.minutes, 'project_destroy.job')
#     end
#   end
# end

require 'clockwork'
require 'clockwork/database_events'
require './config/boot'
require './config/environment'

module Clockwork
  Clockwork.manager = DatabaseEvents::Manager.new
  sync_database_events model: ClockworkDatabaseEvent, every: 1.minute do |model_instance|
    puts "execute job here #{model_instance}"
    Project.create_data
  end
end