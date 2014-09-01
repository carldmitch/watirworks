=begin
      When I select "entry" from the dropdown "attribute=value"
=end
When /^I select "(.*)" from the dropdown "(\w{2,9})=(.*)"$/ do
|entry, attribute, value|
  selector = @browser.select_list(:"#{attribute}" => value)
  selector.wait_until_present
  eval = selector.exists?
  if eval == true
    selector.select "#{entry}"
  else
    fail("FAIL!!!! I couldn't select '#{entry}' from the dropdown '#{attribute}=#{value}'")
  end
end

#_step_#2 Then the value of the dropdown "(.*)" should be "(.*)"
Then /^the value of the dropdown "(\w{2,9})=(.*)" should be "(.*)"$/ do
|attribute, value, entry|
  selector = @browser.select_list(:"#{attribute}" => value)
  selector.wait_until_present
  dropdown = selector.value
  eval = dropdown == "#{entry}"
  if eval == true
    puts("#{eval}!!! the '#{attribute}=#{value}' value is '#{dropdown}'")
  else
    fail("#{eval}!!! the '#{attribute}=#{value}' value is '#{dropdown}'")
  end
end

#_step_#3 Then the dropdown "(.*)" should have "(.*)" selected
Then /^the dropdown "(\w{2,9})=(.*)" should have "(.*)" selected$/ do
|attribute, value, entry|
  selector = @browser.select_list(:"#{attribute}" => value)
  selector.wait_until_present
  eval = selector.selected? "#{entry}"
  if eval == true
    puts("#{eval}!!! the dropdown '#{attribute}=#{value}' has '#{entry}' selected")
  else
    fail("#{eval}!!! the dropdown '#{attribute}=#{value}' doesn NOT have '#{entry}' selected")
  end
end
