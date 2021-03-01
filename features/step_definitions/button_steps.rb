=begin button_step_1
When I click on the button "attribute=value"
=end
# This rule is handy if 'click on the link' doesn't work for you
When /^I click on the button "(.*)"$/ do |selector|
  element = @browser.button(css: selector)
  if element.present?
    element.click
  else
    fail("FAIL!!! I couldn't find the '#{selector}' button")
  end
end

=begin button_step_2
Then the button "attribute=value" should be enabled
=end
# A disabled button is unusable and un-clickable.
# The disabled attribute can be set to keep a user from clicking
# on the button until some other condition has been met (like selecting a checkbox, etc.).
# Then, a JavaScript could remove the disabled value, and make the button usable.
Then /^the button "(.*)" should be enabled$/ do | selector |
  element = @browser.button(css: selector)
  element.present?
  if element.enabled?
    log("TRUE!!! the button '#{selector}' IS enabled")
  else
    fail("FAIL!!! the button '#{selector}' is NOT enabled")
  end
end

=begin button_step_3
Then the button "attribute=value" should not be enabled
=end
# The disabled attribute can be set to keep a user from clicking
# on the button until some other condition has been met (like selecting a checkbox, etc.).
# Then, a JavaScript could remove the disabled value, and make the button usable.
Then /^the button "(.*)" should not be enabled$/ do | selector |
  element = @browser.button(css: selector)
  element.present?
  if !(element.enabled?)
    log("TRUE!!! the button '#{selector}' is NOT enabled")
  else
    fail("FAIL!!! the button '#{selector}' IS enabled")
  end
end

When /^I click on the button with the text "(.*)"$/ do |text|
  element = @browser.button(text: text)
  if element.present?
    element.click
  else
    fail("FAIL!!! I couldn't find the '#{text}' button")
  end
end
