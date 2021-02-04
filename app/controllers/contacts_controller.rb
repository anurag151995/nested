class ContactsController < ApplicationController
	def new
	  @contact = Contact.new
	  #3.times{@contact.pets.build}
	end

	def create
     @contact = Contact.new(contact_params)
     @contact.save
     redirect_to contacts_path
    end

    def index
        @pets = Pet.all
    end

    private
    def contact_params
    	params.require(:contact).permit(:name, :address,:user_id,:phone_number,pets_attributes:[:pet_id,:name,:breed])
    end
end
