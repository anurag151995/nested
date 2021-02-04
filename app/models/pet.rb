class Pet < ApplicationRecord
	has_many :contact
	has_many :users, through: :contacts
end

