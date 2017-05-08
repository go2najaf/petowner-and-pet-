class PagesController < ApplicationController
  def Index
  end

  def Home
  	@pets = Pet.all 
  end

  def Profile
  	if (User.find_by_first_name(params[:id]))
  		@first_name = params[:id]
  	else 
  		redirect_to root_path, :notice => "user not found"
  	end 

  	@pets = Pet.all.where("user_id = ? ", User.find_by_first_name(params[:id]).id)
  	@newPet = Pet.new
  end

  def Explore
  	@pets = Pet.all 
  end
end
