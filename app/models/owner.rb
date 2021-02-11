class Owner < ApplicationRecord
	validates :name, presence: { message: "must be given please" }
	has_many :dogs
	before_save do |user|
	  puts "before_save called"
	end
end


