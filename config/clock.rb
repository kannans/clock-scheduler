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
    when "project.create_data"
      Project.create_data
    when "project.destroy_data"
      Project.destroy_data
    end
  end

  # every(10.seconds, 'frequent.job')
  # every(3.minutes, 'less.frequent.job')
  # every(1.hour, 'hourly.job')

  # JobScheduler.all.each do |job|
    every(1.minutes, 'project.create_data')
    every(10.minutes, 'project.destroy_data')
  # end
end