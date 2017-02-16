class CongressPerson < ActiveRecord::Base
	has_many :reviews


	def full_name
		"#{last_name}, #{first_name}"
	end
end
