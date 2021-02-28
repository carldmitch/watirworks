=begin text_field_steps_01
When I set the text field "value" to "type"
=end
When /^I set the text field "(.*)" to "(.*)"$/ do |selector, value|
  element = @browser.text_field(css: selector)
  if element.exists?
    element.set value
    log(value)
  else
    fail("FAIL!!!! I couldn't input '#{value}, into '#{selector}'")
  end
end

=begin text_field_steps_02
When I set the text field "attribute=value" with a random email address
=end
When /^I set the text field "(.*)" with a random email address$/ do |selector|
  element = @browser.text_field(css: selector)
  random_email = (0...8).map { (65 + rand(26)).chr }.join.downcase + "@carldmitch.com"
  if element.exists?
    element.set random_email
    log(random_email)
  else
    fail("FAIL!!!! I couldn't input '#{random_email}, into '#{selector}'")
  end
end

=begin text_field_steps_03
When I set the text field "attribute=value" with a timestamp
=end
When /^I set the text field "(.*)" with a timestamp$/ do |selector|
  element = @browser.text_field(css: selector)
  time = Time.now.getutc
  if element.exists?
    element.set time
    log(time)
  else
    fail("FAIL!!!! I couldn't input '#{time}, into '#{selector}'")
  end
end


=begin text_field_steps_04
When I set the text field "attribute=value" with random text
=end
When /^I set the text field "(.*)" with random text$/ do |selector|
  element = @browser.text_field(css: selector)
  random_text = (0...8).map { (65 + rand(26)).chr }.join.downcase
  if element.exists?
    element.set random_text
    log(random_text)
  else
    fail("FAIL!!!! I couldn't input '#{random_text}, into '#{selector}'")
  end
end

=begin text_field_steps_05
When I clear the text field "attribute=value"
=end
When /^I clear the text field "(.*)"$/ do |selector|
  element = @browser.text_field(css: selector)
  if element.exists?
    element.clear
  else
    fail("FAIL!!!! I couldn't clear '#{selector}'")
  end
end

=begin text_field_steps_05
Then the text field "value" should include the text "my_text"
=end
Then /^the text field "(.*)" should include the text "(.*)"$/ do |selector, my_text|
  text_field(selector)
  result = @text_field_selector.value
  eval = result.include? my_text
  if eval == true
    true
  else
    fail
  end
end


=begin text_field_steps_06
Then the input field "attribute=value" should be editable
=end
Then /^the input field "(.*)" should be editable$/ do |selector|
  element = @browser.text_field(css: selector)
  if element.enabled?
    puts("True !!! '#{selector}' is editable!")
  else
    fail("False !!! '#{selector}' is NOT editable!")
  end
end

=begin text_field_steps_07
Then the input field "attribute=value" should not be editable
=end
Then /^the input field "(.*)" should not be editable$/ do |selector|
  element = @browser.text_field(css: selector)
  if !(element.enabled?)
    puts("True !!! '#{selector}' is NOT editable!")
  else
    fail("Fail, '#{selector}' is editable!")
  end
end

=begin text_field_steps_08
When I set the text field "attribute=value" to a random zip code
=end
When /^I set the text field "(.*)" to a random zip code$/ do |selector|
  element = @browser.text_field(css: selector)
  random_zip = "%05d" % rand(99999)
  if element.exists?
    element.set random_zip
  else
    fail("Fail, the '#{selector}' element is NOT present")
  end
end
