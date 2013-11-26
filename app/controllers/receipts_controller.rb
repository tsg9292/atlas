# This file is app/controllers/receipts_controller.rb
class ReceiptsController < ApplicationController
  	def index
    	@receipts = Receipt.all
  	end

  	def show
  		id = params[:id] # retrieve movie ID from URI route
  		@movie = Movie.find(id) # look up movie by unique ID
  		# will render app/views/movies/show.html.haml by default
	end

	def new
  		# default: render 'new' template
	end

	def create
  		@receipt = Receipt.create!(params[:receipt])
  		flash[:notice] = "#{@receipt.title} was successfully created."
  		redirect_to receipts_path
	end

	def edit
  		@receipt = Receipt.find params[:id]
	end
 
	def update
  		@receipt = Receipt.find params[:id]
  		@receipt.update_attributes!(params[:receipt])
  		flash[:notice] = "#{@receipt.title} was successfully updated."
  		redirect_to movie_path(@receipt)
	end

	def destroy
  		@receipt = Receipt.find(params[:id])
  		@receipt.destroy
  		flash[:notice] = "Receipt '#{@receipt.title}' deleted."
  		redirect_to receipts_path
	end
end