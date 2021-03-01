=begin radio_step_01
When I set the radio button "(.*)"
=end
When /^I set the radio button "(.*)"$/ do |selector|
  element = @browser.radio(css: selector)
  if element.present?
    element.set
  else
    fail("FAIL !!!! I couldn't set the radio button '#{selector}'")
  end
end

##_step_#2 Then the radio button "(.*)" should be set
#
Then /^the radio button "(.*)" should be set$/ do |selector|
  element = @browser.radio(css: selector)
  element.present?
  if element.set?
    log("True !!! the radio button '#{selector}' IS set")
  else
    fail("Fail !!! the radio button '#{selector}' is NOT set")
  end
end

##_step_#3 Then the radio button "(.*)" should not be set
#
Then /^the radio button "(.*)" should not be set$/ do |selector|
  element = @browser.radio(css: selector)
  element.present?
  if !(element.set?)
    log("True !!! the radio button '#{selector}' is NOT set")
  else
    fail("Fail !!! the radio button '#{selector}' IS set")
  end
end
