class Dog < ApplicationRecord
	belongs_to :owner, optional: true
	accepts_nested_attributes_for :owner
end

