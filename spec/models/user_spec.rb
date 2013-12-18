require 'spec_helper'
require 'user'

describe User do
before do
@user = User.new(:email => "hola@gmail.com", :username => "emanresu", :password => "drowssap")
end
it "should have the right info" do
@user[:email].should == "hola@gmail.com"
@user[:username].should == "emanresu"
@user[:password].should_not == "drowssap"
end
end
