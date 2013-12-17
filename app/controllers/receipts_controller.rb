class ReceiptsController < ApplicationController

	def show
  		id = params[:id] # retrieve movie ID from URI route
  		@receipt = Receipt.find(id) # look up movie by unique ID
  		# will render app/views/receipts/show.html.haml by default
	end

  	def index
		sort = params[:sort] #|| session[:sort]
		case sort
		when 'date'
    		ordering,@date_header = {:order => :date}, 'hilite'
    		if (@receipts = Receipt.order("date DESC"))
    			@receipts = Receipt.order("date ASC")
    		elsif (@receipts = Receipt.order("date ASC"))
    			@receipts = Receipt.order("date DESC")
    		end
    		return
		when 'cost'
			ordering,@cost_header = {:order => :cost}, 'hilite'
			@receipts = Receipt.order("cost ASC")
			return
    when 'store'
      @receipts = Receipt.where("store = (?)", params[:sto])
      return
		end 
	@receipts = Receipt.all
  	end

	def new
  		# default: render 'new' template
	end

	def create
  		@receipt = Receipt.create!(params[:receipt])
  		flash[:notice] = "#{@receipt.title} was successfully created."
  		redirect_to receipts_path
	end
 
	def update
  		@receipt = Receipt.find params[:id]
  		@receipt.update_attributes!(params[:receipt])
  		flash[:notice] = "#{@receipt.title} was successfully updated."
  		redirect_to receipt_path(@receipt)
	end

	def destroy
  		@receipt = Receipt.find(params[:id])
  		@receipt.destroy
  		flash[:notice] = "Receipt '#{@receipt.title}' deleted."
  		redirect_to receipts_path
	end
end
