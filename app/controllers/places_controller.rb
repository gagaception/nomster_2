class PlacesController < ApplicationController
	def index
		@places = Place.paginate(:page => params[:page], :per_page => 1)
	end

	def new
		@place = Place.new
	end

	def create
		Place.create(place_params)
		redirect_to root_path 
	end

	def place_params
		params.require(:place).permit(:name, :address, :description)
	end	

end
