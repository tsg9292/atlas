class Receipt < ActiveRecord::Base
	attr_accessible :title, :date, :cost, :payment, :store
end