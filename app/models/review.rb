class Review < ActiveRecord::Base
	belongs_to :congress_person
	belongs_to :bill
end