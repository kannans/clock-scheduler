class Project < ActiveRecord::Base

  def self.create_data
    2.times do |x|
      create(name: "Project#{x}")
    end
  end

  def self.destroy_data
    destroy_all
  end
end
