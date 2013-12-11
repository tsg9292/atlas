require "spec_helper"
require "receipt"

describe Receipt do
	before do
		@receipt = Receipt.new(:title => "t6", :date => "2013/12/12 14:48:23", :cost => 10.00, :store => "Bestbuy", :payment => "1234")
	end
	it "should have a title" do
		@receipt[:title].empty?.should == false
		@receipt[:title].should == "t6"
	end
	it "should have a reasonable date" do
		@receipt[:date].year.should == 2013
		@receipt[:date].month.should == 12
		@receipt[:date].day.should == 12
		@receipt[:date].hour.should == 14
		@receipt[:date].min.should == 48
		@receipt[:date].sec.should == 23
	end
	it "shoudld have a positive cost" do
		@receipt[:cost].<=>(0).should == +1
		@receipt[:cost].should == 10.00
	end
	it "should be made at a store" do
		@receipt[:store].empty?.should == false
		@receipt[:store].should == "Bestbuy"
	end
	it "should be made with a form of payment" do
		@receipt[:payment].empty?.should == false
		@receipt[:payment].should == "1234"
	end
end