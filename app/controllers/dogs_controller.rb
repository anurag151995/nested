class DogsController < ApplicationController
	def new
      @dog = Dog.new
      #@dog.build_owner
    end

    def create
    	@dog = Dog.new(dogs_params)
    	@dog.save
        redirect_to dogs_path
    end

    def index
        @dogs = Dog.all
    end

    private
    def dogs_params
    	params.require(:dog).permit(:name,:breed,:age, owner_attributes: [:name])
    end
end