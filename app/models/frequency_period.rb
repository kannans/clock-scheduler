class FrequencyPeriod < ActiveRecord::Base



     def self.data
    [:second, :minute, :hour, :day, :week, :month].each do |period|
      create(name: period)
    end
  end
end
