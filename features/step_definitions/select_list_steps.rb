=begin select_list_test_1
When I select "entry" from the dropdown "attribute=value"
=end
When /^I select "(.*)" from the dropdown "(.*)"$/ do |entry, selector|
  element = @browser.select_list(css: selector)
  if element.present?
    element.select "#{entry}"
  else
    fail("FAIL!!!! I couldn't select '#{entry}' from the dropdown '#{selector}'")
  end
end

#_step_#2 Then the value of the dropdown "(.*)" should be "(.*)"
Then /^the value of the dropdown "(.*)" should be "(.*)"$/ do |selector, entry|
  element = @browser.select_list(css: selector)
  element.present?
  dropdown = element.value
  if dropdown == entry
    log("True !!! the '#{selector}' value is '#{dropdown}'")
  else
    fail("Fail !!! the '#{selector}' value is '#{dropdown}'")
  end
end

#_step_#3 Then the dropdown "(.*)" should have "(.*)" selected
Then /^the dropdown "(.*)" should have "(.*)" selected$/ do |selector, entry|
  element = @browser.select_list(css: selector)
  element.present?
  if element.selected? "#{entry}"
    log("True !!! the dropdown '#{selector}' has '#{entry}' selected")
  else
    fail("Fail !!! the dropdown '#{selector}' doesn NOT have '#{entry}' selected")
  end
end
