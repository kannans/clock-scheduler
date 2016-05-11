require 'clockwork'
require './config/boot'
require './config/environment'
module Clockwork
  configure do |config|
    config[:tz] = 'UTC'
  end

  handler do |job|
    puts "Running #{job} - #{Time.now}"
    case job
    when "project_create.job"
      Project.create_data
    when "project_destroy.job"
      Project.destroy_data
    end
  end

  # every(10.seconds, 'frequent.job')
  # every(3.minutes, 'less.frequent.job')
  # every(1.hour, 'hourly.job')
  every(5.minutes, 'project_create.job')
  every(10.minutes, 'project_destroy.job')
end