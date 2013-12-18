# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#

# Seed the Atlas DB with some receipts
more_receipts = [
	{:date => '25-Nov-1997 11:34.5',  :cost => 11.50,  :store => 'Best Buy',             :payment => '7228', :usern => 'tsg9292'},
	{:date => '24-Nov-2008 13:02.32', :cost => 7.86,   :store => 'Chipotle',             :payment => '3354', :usern => 'tsg9292'},
	{:date => '25-Nov-2009 15:53.53', :cost => 23.42,  :store => 'King Soopers',         :payment => '3354', :usern => 'tsg9292'},
	{:date => '22-Nov-2011 13:02.32', :cost => 37.96,  :store => 'Google Inc',           :payment => '3354', :usern => 'tsg9292'},
	{:date => '31-Oct-2013 18:32.45', :cost => 23.42,  :store => 'Best Buy',             :payment => '7228', :usern => 'tsg9292'},
	{:date => '12-Dec-2013 15:23.11', :cost => 23.42,  :store => 'Best Buy',             :payment => 'cash', :usern => 'tsg9292'},
	{:date => '1-Jan-2014 14:30.00',  :cost => 0.25,   :store => 'Lemonade Stand',       :payment => 'Cash', :usern => 'tsg9292'},
	{:date => '30-Nov-2013 22:07.56', :cost => 13.73,  :store => 'Safeway',              :payment => '7228', :usern => 'tsg9292'},
	{:date => '1-Dec-2013 11:21.12',  :cost => 747.50, :store => 'Fowler Inc',           :payment => '7228', :usern => 'tsg9292'},
	{:date => '3-Dec-2013 14:23.32',  :cost => 3.89,   :store => 'Valero',               :payment => 'Cash', :usern => 'tsg9292'},
	{:date => '3-Dec-2013 14:25.11',  :cost => 43.32,  :store => 'Valero',               :payment => '7228', :usern => 'tsg9292'},
	{:date => '4-Dec-2013 12:32.34',  :cost => 7.58,   :store => 'Pei Wei',              :payment => '3354', :usern => 'tsg9292'},
	{:date => '5-Dec-2013 16:21.11',  :cost => 24.98,  :store => 'Floyds Barbershop',    :payment => '3354', :usern => 'tsg9292'},
	{:date => '6-Dec-2013 9:46.54',   :cost => 2.54,   :store => 'Sip Boulder',          :payment => '3354', :usern => 'tsg9292'},
	{:date => '6-Dec-2013 12:32.43',  :cost => 8.43,   :store => 'Pei Wei',              :payment => '7228', :usern => 'tsg9292'},
	{:date => '7-Dec-2013 11:21.25',  :cost => 21.34,  :store => 'Safeway',              :payment => '7228', :usern => 'tsg9292'},
	{:date => '9-Dec-2013 9:41.21',   :cost => 11.34,  :store => 'Safeway',              :payment => '7228', :usern => 'tsg9292'},
	{:date => '10-Dec-2013 10:53.56', :cost => 2.54,   :store => 'Sip Boulder',          :payment => '3354', :usern => 'tsg9292'},
	{:date => '12-Dec-2013 15:32.32', :cost => 2.75,   :store => 'Celestial Seasonings', :payment => '7228', :usern => 'tsg9292'},
	{:date => '13-Dec-2013 21:54.32', :cost => 8.89,   :store => 'Bottles',              :payment => '7228', :usern => 'tsg9292'},
	{:date => '13-Dec-2013 22:34.21', :cost => 12.53,  :store => 'Cinemark Boulder',     :payment => '7228', :usern => 'tsg9292'},
	{:date => '14-Dec-2013 12:21.11', :cost => 8.21,   :store => 'Chipotle',             :payment => '3354', :usern => 'tsg9292'},
	{:date => '15-Dec-2013 14:58.59', :cost => 25.00,  :store => 'ATM Withdrawl',        :payment => '3354', :usern => 'tsg9292'},
	{:date => '16-Dec-2013 10:32.44', :cost => 7.43,   :store => 'Safeway',              :payment => 'cash', :usern => 'tsg9292'},
	{:date => '17-Dec-2013 17:11.00', :cost => 32.56,  :store => 'Shell',                :payment => '7228', :usern => 'tsg9292'},
	{:date => '18-Dec-2013 13:34.11', :cost => 13.45,  :store => 'Safeway',              :payment => '7228', :usern => 'tsg9292'},
	{:date => '19-Dec-2013 8:12.21',  :cost => 2.54,   :store => 'Sip Boulder',          :payment => 'cash', :usern => 'tsg9292'},
	{:date => '19-Dec-2013 20:11.11', :cost => 42.87,  :store => 'Hazels',               :payment => 'cash', :usern => 'tsg9292'},
	{:date => '20-Dec-2013 11:23.12', :cost => 25.34,  :store => 'Best Buy',             :payment => '7228', :usern => 'tsg9292'},
	{:date => '20-Dec-2013 13:12.12', :cost => 10.32,  :store => 'Celestial Seasonings', :payment => '7228', :usern => 'tsg9292'},
	{:date => '01-Jan-1900 00:00.00', :cost => 0,      :store => 'test',                 :payment => 'cash', :usern => 'test'},
]
# NOTE: the following line temporarily allows mass assignment
# (needed if you used attr_accessible/attr_protected in receipt.rb)
more_receipts.each do |receipt|
	Receipt.create!(receipt)
end

tg = User.new
tg.email = 'tsg9292@gmail.com'
tg.username = 'tsg9292'
tg.password = 'test'
tg.password_confirmation = 'test'
tg.save!

test = User.new
test.email = 'test@test.com'
test.username = 'test'
test.password = 'test'
test.password_confirmation = 'test'
test.save!