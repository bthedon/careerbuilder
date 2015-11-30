class Job < ActiveRecord::Base
	belongs_to :user
	has_many :applications
	validates_presence_of :city
	validates_presence_of :state
	geocoded_by :city_state
	after_validation :geocode 

	def city_state
		"#{city}, #{state}"
	end	
end
