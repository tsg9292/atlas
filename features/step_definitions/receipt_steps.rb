Given /the following receipts exist/ do |receipts_table|
	receipts_table.hashes.each do |receipt|
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
