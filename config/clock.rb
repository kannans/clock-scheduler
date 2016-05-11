require 'clockwork'
require './config/boot'
require './config/environment'
module Clockwork
  configure do |config|
    config[:tz] = 'UTC'
  end

  handler do |job|
    puts "Running #{job} - #{Time.now}"
    Project.create_data
  end

  # every(10.seconds, 'frequent.job')
  # every(3.minutes, 'less.frequent.job')
  # every(1.hour, 'hourly.job')

  # JobScheduler.all.each do |job|
    every(1.minutes, 'project.job')
  # end
end