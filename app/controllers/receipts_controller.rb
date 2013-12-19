class ReceiptsController < ApplicationController

	def show
  	id = params[:id] # retrieve receipt ID from URI route
  	@receipt = Receipt.find(id) # look up receipt by unique ID
  	# will render app/views/receipts/show.html.haml by default
	end

  def index
	sort = params[:sort] #|| session[:sort]
	now = DateTime.now
	twoWeeksAgo = now - 14
	case sort
	when 'dateasc'
		ordering,@date_header = {:order => :dateasc}, 'hilite'
    	@receipts = Receipt.order("date").where("usern = (?) and (?) > date", current_user.username, now)
    	return
    when 'datedesc'
      ordering,@date_header = {:order => :datedesc}, 'hilite'
      @receipts = Receipt.order("date DESC").where("usern = (?) and (?) > date", current_user.username, now)
      return
	when 'costasc'
		ordering,@cost_header = {:order => :costasc}, 'hilite'
		@receipts = Receipt.order("cost").where("usern = (?) and (?) > date", current_user.username, now)
		return
    when 'costdesc'
    	ordering,@cost_header = {:order => :costdesc}, 'hilite'
    	@receipts = Receipt.order("cost DESC").where("usern = (?) and (?) > date", current_user.username, now)
    	return
    when 'store'
      ordering,@store_header = {:order => :store}, 'hilite'
    	@receipts = Receipt.where("store == (?) and usern == (?) and (?) > date", params[:sto], current_user.username, now)
    	return
    when 'payment'
      ordering,@payment_header = {:order => :payment}, 'hilite'
    	@receipts = Receipt.where("payment == (?) and usern == (?) and (?) > date", params[:pay], current_user.username, now)
    	return
    end
    @receipts = Receipt.order("date").where("usern = (?) and (?) > date", current_user.username, now)
  end

	def new
  		# default: render 'new' template
	end

	def create
  		@receipt = Receipt.create!(params[:receipt])
  		flash[:notice] = "Receipt was successfully created."
  		redirect_to receipts_path
	end
 
	def update
  		@receipt = Receipt.find params[:id]
  		@receipt.update_attributes!(params[:receipt])
  		flash[:notice] = "Receipt was successfully updated."
  		redirect_to receipt_path(@receipt)
	end

	def destroy
  		@receipt = Receipt.find(params[:id])
  		@receipt.destroy
  		flash[:notice] = "Receipt was successfully deleted."
  		redirect_to receipts_path
	end
end
