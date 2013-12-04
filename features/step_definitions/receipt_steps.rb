Given /the following receipts exist/ do |receipts|
	receipts.hashes.each do |receipt|
		Receipt.create!(receipt)
	end
end

Given /^(?:|I) am on (.+)$/ do |page_name|
	visit path_to(page_name)
end

When /I follow "(.*)"$/ do |sort_choice|
	if sort_choice == "Add new movie"
		click_on("/receipts/new")
	end
end