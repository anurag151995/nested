class Pet < ApplicationRecord
	belongs_to :contact
	has_many :contact
	has_many :users, through: :contacts
end

