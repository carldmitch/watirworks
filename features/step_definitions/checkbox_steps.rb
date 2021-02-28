=begin checkbox_step_1
When I set the checkbox "attribute=value"
=end
When /^I set the checkbox "(.*)"$/ do |selector|
  element = @browser.checkbox(css: selector)
  element.present?
  if !(element.set?)
    element.set
  else
    log("Whoa, wait the checkbox '#{selector}' is already set")
  end
end

=begin checkbox_step_2
When I clear the checkbox "attribute=value"
=end
When /^I clear the checkbox "(.*)"$/ do |selector|
  element = @browser.checkbox(css: selector)
  element.present?
  if element.set?
    element.clear
  else
    log("Whoa, wait the checkbox '#{selector}' is already clear")
  end
end

=begin checkbox_step_3
Then the checkbox "attribute=value" should be set
=end
Then /^the checkbox "(.*)" should be set$/ do |selector|
  element = @browser.checkbox(css: selector)
  element.present?
  if element.set?
    log("TRUE!!! The checkbox '#{selector}' is set")
  else
    fail("FAIL!!!! The checkbox '#{selector}' is not set")
  end
end

=begin checkbox_step_4
Then the checkbox "attribute=value" should not be set
=end
Then /^the checkbox "(.*)" should not be set$/ do |selector|
  element = @browser.checkbox(css: selector)
  element.present?
    if !(element.set?)
      log("TRUE!!! The checkbox '#{selector}' is NOT set")
    else
      fail("FAIL!!!! the checkbox '#{selector}' IS set")
    end
end
