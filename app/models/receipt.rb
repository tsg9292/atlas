class Receipt < ActiveRecord::Base
	attr_accessible :date, :cost, :payment, :store, :usern
end