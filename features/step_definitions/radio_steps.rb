##_step_#1 When I set the radio button "(\w{2,9})=(.*)"
#
When /^I set the radio button "(\w{2,9})=(.*)"$/ do
 |attribute, value|
  selector = @browser.radio(:"#{attribute}" => value)
  selector.wait_until_present
  eval = selector.exists?
  if eval == true
    selector.set
    else
      fail("FAIL!!!! I couldn't set the radio button '#{attribute}=#{value}'")
  end
end

##_step_#2 Then the radio button "(\w{2,9})=(.*)" should be set
#
Then /^the radio button "(\w{2,9})=(.*)" should be set$/ do
 |attribute, value|
  selector = @browser.radio(:"#{attribute}" => value)
  selector.wait_until_present
  eval = selector.set?
  if eval == true
    puts("#{eval}!!! the radio button '#{attribute}=#{value}' IS set")
  else
    fail("#{eval}!!! the radio button '#{attribute}=#{value}' is NOT set")
  end
end

##_step_#3 Then the radio button "(\w{2,9})=(.*)" should not be set
#
Then /^the radio button "(\w{2,9})=(.*)" should not be set$/ do
 |attribute, value|
  selector = @browser.radio(:"#{attribute}" => value)
  selector.wait_until_present
  eval = !(selector.set?)
  if eval == true
    puts("#{eval}!!! the radio button '#{attribute}=#{value}' is NOT set")
  else
    fail("#{eval}!!! the radio button '#{attribute}=#{value}' IS set")
  end
end
