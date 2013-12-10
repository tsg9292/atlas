Given /the following receipts exist/ do |receipts_table|
	receipts_table.hashes.each do |receipt|
		Receipt.create!(receipt)
	end
end

Given /^(?:|I) am on (.+)$/ do |page_name|
	visit path_to(page_name)
end

Given /I have added "(.*)" with date "(.*)", cost "(.*)", store "(.*)", payment "(.*)"/ do |title, date, cost, store, payment|
	step "I am on the new receipt page"
	date.split('-')
	fill_in("Title", :with => "#{title}")
	select("#{date[0]}", :from => "receipt_date_1i")
	case "#{date}"
	when "January" then select(1, :from => "receipt_date_2i")
	when "February" then select(2, :from => "receipt_date_2i")
	when "March" then select(3, :from => "receipt_date_2i")
	when "April" then select(4, :from => "receipt_date_2i")
	when "May" then select(5, :from => "receipt_date_2i")
	when "June" then select(6, :from => "receipt_date_2i")
	when "July" then select(7, :from => "receipt_date_2i")
	when "August" then select(8, :from => "receipt_date_2i")
	when "September" then select(9, :from => "receipt_date_2i")
	when "October" then select(10, :from => "receipt_date_2i")
	when "November" then select(11, :from => "receipt_date_2i")	
	when "December" then select(12, :from => "receipt_date_2i")
	end
	select("#{date[2]}", :from => "receipt_date_3i")
	fill_in("Cost", :with => cost)
	fill_in("Store", :with => store)
	fill_in("Payment", :with => payment)
	click_button("Save Changes")
end

Then /I should see "(.*)" before "(.*)"/ do |e1, e2|
  #  ensure that that e1 occurs before e2.
  #  page.body is the entire content of the page as a string.
  #flunk "Unimplemented"
  aString = page.body.to_s
  if aString.index(e1)!=nil && aString.index(e2) !=nil
  if aString.index(e1) < aString.index(e2)
  else
  assert false,"jr_fail"
  end
  else
  assert false,"jr_fail"
  end
end

Then /I should see "(.*)" on "(.*)"/ do |string, path|
	step "I am on #{path}"
	page.body.should =~ /#{string}/
end
