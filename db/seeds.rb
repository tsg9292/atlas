# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#

# Seed the Atlas DB with some receipts
more_receipts = [
	{:title => 'r5', :date => '25-Nov-2013', :cost => '11.50', :store => 'Best Buy', :payment => '1234'},
	{:title => 'r4', :date => '25-Nov-2013', :cost => '7.86', :store => 'Chipotle', :payment => '1234'},
	{:title => 'r3', :date => '24-Nov-2013', :cost => '23.42', :store => 'King Soopers', :payment => '1234'},
	{:title => 'r2', :date => '22-Nov-2013', :cost => '37.96', :store => 'Google Inc', :payment => '4321'},
	{:title => 'r1', :date => '31-Oct-2013', :cost => '23.42', :store => 'Best Buy', :payment => '4321'}
]
# NOTE: the following line temporarily allows mass assignment
# (needed if you used attr_accessible/attr_protected in receipt.rb)
more_receipts.each do |receipt|
	Receipt.create!(receipt)
end