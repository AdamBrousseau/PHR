class Patient < ActiveRecord::Base
	belongs_to: users

	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :dob, presence: true
	validates :health_card, uniquness: true
	
	#change too short to general error message
	validates :blood_type, length: { minimum: 2, , maximum: 3, too_short: "A+/-, B+/-, AB+/-, O+/-" }
	validates :gender, presence: true
end
