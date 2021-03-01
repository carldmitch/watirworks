=begin
Then the input field "selector" should be enabled
=end
Then /^the input field "(.*)" should be enabled$/ do |selector|
  element = @browser.input(css: selector)
  element.present?
  if element.enabled?
    log("TRUE!!! the input field '#{selector}' IS enabled")
  else
    fail("FAIL!!! the input field '#{selector}' is NOT enabled")
  end
end

=begin
Then the input field "selector" should not be enabled
=end
Then /^the input field "(.*)" should not be enabled$/ do |selector|
  element = @browser.input(css: selector)
  element.present?
  if !(element.enabled?)
    log("TRUE!!! the input field '#{selector}' is NOT enabled")
  else
    fail("FAIL!!! the input field '#{selector}' IS enabled")
  end
end

=begin
Then the input field "selector" should be required
=end
Then /^the input field "(.*)" should be required$/ do | selector |
  element = @browser.input(css: selector)
  element.present?
  if element.required?
    log("TRUE!!! the input field '#{selector}' IS required")
  else
    fail("FAIL!!! the input field '#{selector}' is NOT required")
  end
end

=begin
Then the input field "selector" should not be required
=end
Then /^the input field "(.*)" should not be required$/ do | selector |
  element = @browser.input(css: selector)
  element.present?
  if !(element.required?)
    log("TRUE!!! the input field '#{selector}' is NOT required")
  else
    fail("FAIL!!! the input field '#{selector}' IS required")
  end
end

=begin
Then the cursor should autofocus on the "selector" input field
=end
Then /^the cursor should autofocus on the "(.*)" input field$/ do | selector |
  element = @browser.input(css: selector)
  element.present?
  if element.autofocus?
    log("TRUE!!! the input field '#{selector}' IS set to autofocus")
  else
    fail("FAIL!!! the input field '#{selector}' is NOT set to autofocus")
  end
end

=begin
Then the placeholder text inside the "selector" input field should include "ph_text"
=end
Then /^the placeholder text inside the "(.*)" input field should include "(.*)"$/ do |selector, placeholder_text|
  element = @browser.input(css: selector)
  element.present?  
  result = element.placeholder
  if result.include? placeholder_text
    log("True !!! '#{placeholder_text}' is included in the input field '#{selector}'")
  else
    fail("FAIL!!!! '#{placeholder_text}' is NOT included in the input field '#{selector}'")
  end
end

=begin
Then the input field "selector" should be readonly
=end
Then /^the input field "(.*)" should be readonly$/ do | selector |
  element = @browser.input(css: selector)
  element.present?  
  if element.readonly?
    log("TRUE!!! the input field '#{selector}' IS readonly")
  else
    fail("FAIL!!! the input field '#{selector}' is NOT readonly")
  end
end

=begin
Then the input field "selector" should not be readonly
=end
Then /^the input field "(.*)" should not be readonly$/ do | selector |
  element = @browser.input(css: selector)
  element.present?  
  if !(element.readonly?)
    log("TRUE!!! the input field '#{selector}' is NOT readonly")
  else
    fail("FAIL!!! the input field '#{selector}' IS readonly")
  end
end

