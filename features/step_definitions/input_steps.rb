=begin
Then the input field "attribute=value" should be enabled
=end
Then /^the input field "(\w{2,9})=(.*)" should be enabled$/ do
| attribute, value |
  selector = @browser.input(:"#{attribute}" => value)
  if selector.enabled?
    puts("TRUE!!! the input field '#{attribute}=#{value}' IS enabled")
  else
    fail("FAIL!!! the input field '#{attribute}=#{value}' is NOT enabled")
  end
end

=begin
Then the input field "attribute=value" should not be enabled
=end
Then /^the input field "(\w{2,9})=(.*)" should not be enabled$/ do
| attribute, value |
  selector = @browser.input(:"#{attribute}" => value)
  if !(selector.enabled?)
    puts("TRUE!!! the input field '#{attribute}=#{value}' is NOT enabled")
  else
    fail("FAIL!!! the input field '#{attribute}=#{value}' IS enabled")
  end
end

=begin
Then the input field "attribute=value" should be required
=end
Then /^the input field "(\w{2,9})=(.*)" should be required$/ do
| attribute, value |
  selector = @browser.input(:"#{attribute}" => value)
  if selector.required?
    puts("TRUE!!! the input field '#{attribute}=#{value}' IS required")
  else
    fail("FAIL!!! the input field '#{attribute}=#{value}' is NOT required")
  end
end

=begin
Then the input field "attribute=value" should not be required
=end
Then /^the input field "(\w{2,9})=(.*)" should not be required$/ do
| attribute, value |
  selector = @browser.input(:"#{attribute}" => value)
  if !(selector.required?)
    puts("TRUE!!! the input field '#{attribute}=#{value}' is NOT required")
  else
    fail("FAIL!!! the input field '#{attribute}=#{value}' IS required")
  end
end

=begin
Then the cursor should autofocus on the "attribute=value" input field
=end
Then /^the cursor should autofocus on the "(\w{2,9})=(.*)" input field$/ do
| attribute, value |
  selector = @browser.input(:"#{attribute}" => value)
  if selector.autofocus?
    puts("TRUE!!! the input field '#{attribute}=#{value}' IS set to autofocus")
  else
    fail("FAIL!!! the input field '#{attribute}=#{value}' is NOT set to autofocus")
  end
end

=begin
Then the placeholder text inside the "attribute=value" input field should include "ph_text"
=end
Then /^the placeholder text inside the "(\w{2,9})=(.*)" input field should include "(.*)"$/ do
|attribute, value, ph_text|
  selector = @browser.input(:"#{attribute}" => value).when_present
  result = selector.placeholder
  eval = result.include? ph_text
  if eval == true
    puts("True !!! '#{ph_text}' is included in the input field '#{attribute}=#{value}'")
  else
    fail("FAIL!!!! '#{ph_text}' is NOT included in the input field '#{attribute}=#{value}'")
  end
end

=begin
Then the input field "attribute=value" should be readonly
=end
Then /^the input field "(\w{2,9})=(.*)" should be readonly$/ do
| attribute, value |
  selector = @browser.input(:"#{attribute}" => value)
  if selector.readonly?
    puts("TRUE!!! the input field '#{attribute}=#{value}' IS readonly")
  else
    fail("FAIL!!! the input field '#{attribute}=#{value}' is NOT readonly")
  end
end

=begin
Then the input field "attribute=value" should not be readonly
=end
Then /^the input field "(\w{2,9})=(.*)" should not be readonly$/ do
| attribute, value |
  selector = @browser.input(:"#{attribute}" => value)
  if !(selector.readonly?)
    puts("TRUE!!! the input field '#{attribute}=#{value}' is NOT readonly")
  else
    fail("FAIL!!! the input field '#{attribute}=#{value}' IS readonly")
  end
end

