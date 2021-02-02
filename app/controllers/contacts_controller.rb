class ContactsController < ApplicationController
	def new
	  @contact = Contact.new
	  3.times{@contact.pets.build} 
	end
	def create
     @contact = Contact.new(contact_params(:name, :address, :phone, :email))
     @contact.save
     redirect_to contact_path(@contact)
    end
    private
    def contact_params
    	params.require(:contact).permit(:name, :address, :user_id, :phone, :email, pets_attributes:[:name, :breed])
    end
end
