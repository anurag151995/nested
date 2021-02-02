class Contact < ApplicationRecord
	has_many :pets
	belongs_to :user
	# accepts_nested_attributes_for :pets, reject_if: proc {|attributes|attributes['name'].blank?||attributes['breed'].blank?}
	def pets_attributes=(pets_attributes)
		pets_attributes.values.each do |pets_attribute|
			pet = Pet.find_or_create_by(pets_attribute)
			self.pets << pet
		end
	end
end

