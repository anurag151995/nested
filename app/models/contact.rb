class Contact < ApplicationRecord
	has_many :pets
	belongs_to :user, optional: true
	accepts_nested_attributes_for :pets
end

