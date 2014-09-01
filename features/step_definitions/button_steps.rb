=begin button_step_1
When I click on the button "attribute=value"
=end
# This rule is handy if 'click on the link' doesn't work for you
When /^I click on the button "(\w{2,9})=(.*)"$/ do
|attribute, value|
  selector = @browser.button(:"#{attribute}" => value)
  if selector.exists?
    selector.click
  else
    fail("FAIL!!! I couldn't find the '#{attribute}=#{value}' button")
  end
end

=begin button_step_2
Then the button "attribute=value" should be enabled
=end
# A disabled button is unusable and un-clickable.
# The disabled attribute can be set to keep a user from clicking
# on the button until some other condition has been met (like selecting a checkbox, etc.).
# Then, a JavaScript could remove the disabled value, and make the button usable.
Then /^the button "(\w{2,9})=(.*)" should be enabled$/ do
| attribute, value |
  selector = @browser.button(:"#{attribute}" => value)
  if selector.enabled?
    puts("TRUE!!! the button '#{attribute}=#{value}' IS enabled")
  else
    fail("FAIL!!! the button '#{attribute}=#{value}' is NOT enabled")
  end
end

=begin button_step_3
Then the button "attribute=value" should not be enabled
=end
# The disabled attribute can be set to keep a user from clicking
# on the button until some other condition has been met (like selecting a checkbox, etc.).
# Then, a JavaScript could remove the disabled value, and make the button usable.
Then /^the button "(\w{2,9})=(.*)" should not be enabled$/ do
| attribute, value |
  selector = @browser.button(:"#{attribute}" => value)
  if !(selector.enabled?)
    puts("TRUE!!! the button '#{attribute}=#{value}' is NOT enabled")
  else
    fail("FAIL!!! the button '#{attribute}=#{value}' IS enabled")
  end
end
