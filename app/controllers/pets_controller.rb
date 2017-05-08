class PetsController < ApplicationController

	def new 
		@pet = Pet.new 
	end 

	def create 
		@pet = Pet.new(pet_params)
		@pet.user_id = current_user.id
		respond_to do |f| 
			if (@pet.save)
				f.html {redirect_to "" , notice: "Pet Added to Your Profile"}
			else 
				f.html {redirect_to "" , notice: "Pet Cannot Be Saved "}
			end 
		end 
	end 


	private 
	def pet_params 
		params.require(:pet).permit(:user_id, :pet_name, :image, :pet_age,  :about, :tpe, :weight, :height, :size, :breed, :sex, :spay, :allergies, :medications, :vaccine )

		end 
	end 

