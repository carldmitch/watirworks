=begin text_field_steps_01
When I set the text field "attribute=value" to "type"
=end
When /^I set the text field "(\w{2,9})=(.*)" to "(.*)"$/ do
|attribute, value, type|
  selector = @browser.text_field(:"#{attribute}" => value).when_present(2)
  if selector.exists?
    selector.set type
  else
    fail("FAIL !!! the '#{attribute}=#{value}' element is NOT present")
  end
end

=begin text_field_steps_02
When I set the text field "attribute=value" with a random email address
=end
When /^I set the text field "(\w{2,9})=(.*)" with a random email address$/ do
|attribute, value|
  selector = @browser.text_field(:"#{attribute}" => value).when_present(2)
  random_email = (0...8).map { (65 + rand(26)).chr }.join.downcase + "@cdm.com"
  if selector.exists?
    selector.set random_email
    puts random_email
  else
    fail("FAIL!!!! I couldn't input '#{random_email}, into '#{attribute}=#{value}'")
  end
end

=begin text_field_steps_03
When I set the text field "attribute=value" with a timestamp
=end
When /^I set the text field "(\w{2,9})=(.*)" with a timestamp$/ do
|attribute, value|
  selector = @browser.text_field(:"#{attribute}" => value).when_present(2)
  time = Time.now.getutc
  if selector.exists?
    selector.set time
    puts time
  else
    fail("FAIL!!!! I couldn't input '#{time}, into '#{attribute}=#{value}'")
  end
end


=begin text_field_steps_04
When I set the text field "attribute=value" with random text
=end
When /^I set the text field "(\w{2,9})=(.*)" with random text$/ do
|attribute, value|
  selector = @browser.text_field(:"#{attribute}" => value).when_present(2)
  random_text = (0...8).map { (65 + rand(26)).chr }.join.downcase
  if selector.exists?
    selector.set random_text
    puts random_text
  else
    fail("FAIL!!!! I couldn't input '#{random_text}, into '#{attribute}=#{value}'")
  end
end

=begin text_field_steps_05
When I clear the text field "attribute=value"
=end
When /^I clear the text field "(\w{2,9})=(.*)"$/ do
|attribute, value|
  selector = @browser.text_field(:"#{attribute}" => value).when_present(2)
  if selector.exists?
    selector.clear
  else
    fail("FAIL!!!! I couldn't clear '#{attribute}=#{value}'")
  end
end

=begin text_field_steps_05
Then the text field "attribute=value" should include the text "my_text"
=end
Then /^the text field "(\w{2,9})=(.*)" should include the text "(.*)"$/ do
|attribute, value, my_text|
  selector = @browser.text_field(:"#{attribute}" => value).when_present(2)
  result = selector.value
  eval = result.include? my_text
  if eval == true
    puts("True !!! '#{my_text}' is included in the text field '#{attribute}=#{value}'")
  else
    fail("FAIL!!!! '#{my_text}' is NOT included in the text field '#{attribute}=#{value}'")
  end
end


=begin text_field_steps_06
Then the input field "attribute=value" should be editable
=end
Then /^the input field "(\w{2,9})=(.*)" should be editable$/ do
|attribute, value|
  selector = @browser.text_field(:"#{attribute}" => value).when_present(2)
  if selector.enabled?
    puts("True !!! '#{attribute}=#{value}' is editable!")
  else
    fail("False !!! '#{attribute}=#{value}' is NOT editable!")
  end
end

=begin text_field_steps_07
Then the input field "attribute=value" should not be editable
=end
Then /^the input field "(\w{2,9})=(.*)" should not be editable$/ do
|attribute, value|
  selector = @browser.text_field(:"#{attribute}" => value).when_present(2)
  if !(selector.enabled?)
    puts("True !!! '#{attribute}=#{value}' is NOT editable!")
  else
    fail("False !!! '#{attribute}=#{value}' is editable!")
  end
end

=begin text_field_steps_08
When I set the text field "attribute=value" to a random zip code
=end
When /^I set the text field "(\w{2,9})=(.*)" to a random zip code$/ do
|attribute, value|
  selector = @browser.text_field(:"#{attribute}" => value).when_present(2)
  random_zip = "%05d" % rand(99999)
  if selector.exists?
    selector.set random_zip
  else
    fail("#{eval}, the '#{attribute}=#{value}' element is NOT present")
  end
end
