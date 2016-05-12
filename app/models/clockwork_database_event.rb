class ClockworkDatabaseEvent < ActiveRecord::Base
  belongs_to :frequency_period

  def frequency
    frequency_quantity.send(frequency_period.name.pluralize)
  end

  # def if?(time)
  #   time.day == day && time.month == month
  # end
end
