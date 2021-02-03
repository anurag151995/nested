class Pet < ApplicationRecord
	belongs_to :contact, optional: true
	has_many :contact
	has_many :users, through: :contacts
end

