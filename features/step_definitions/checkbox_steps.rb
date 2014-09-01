=begin checkbox_step_1
When I set the checkbox "attribute=value"
=end
When /^I set the checkbox "(\w{2,9})=(.*)"$/ do
|attribute, value|
  selector = @browser.checkbox(:"#{attribute}" => value)
  selector.wait_until_present
    if !(selector.set?)
      selector.set
    else
      puts("Whoa, wait the checkbox '#{attribute}=#{value}' is already set")
   end
end

=begin checkbox_step_2
When I clear the checkbox "attribute=value"
=end
When /^I clear the checkbox "(\w{2,9})=(.*)"$/ do
|attribute, value|
  selector = @browser.checkbox(:"#{attribute}" => value)
  selector.wait_until_present
    if selector.set?
      selector.clear
    else
      puts("Whoa, wait the checkbox '#{attribute}=#{value}' is already clear")
    end
end

=begin checkbox_step_3
Then the checkbox "attribute=value" should be set
=end
Then /^the checkbox "(\w{2,9})=(.*)" should be set$/ do
|attribute, value|
  selector = @browser.checkbox(:"#{attribute}" => value)
  selector.wait_until_present
    if selector.set?
      puts("TRUE!!! The checkbox '#{attribute}=#{value}' is set")
    else
      fail("FAIL!!!! The checkbox '#{attribute}=#{value}' was not set")
    end
end

=begin checkbox_step_4
Then the checkbox "attribute=value" should not be set
=end
Then /^the checkbox "(\w{2,9})=(.*)" should not be set$/ do
|attribute, value|
  selector = @browser.checkbox(:"#{attribute}" => value)
  selector.wait_until_present
    if !(selector.set?)
      puts("TRUE!!! The checkbox '#{attribute}=#{value}' is NOT set")
    else
      fail("FAIL!!!! the checkbox '#{attribute}=#{value}' IS set")
    end
end
