#_step_#1 Then I wait for the span "(\w{2,9})=(.*)" to be present
#
Then /^I wait for the span "(\w{2,9})=(.*)" to be present$/ do
|attribute, value,|
  selector = @browser.span(:"#{attribute}" => value)
  selector.wait_until_present
  if eval = selector.exists?
      puts("#{eval} the '#{attribute}=#{value}' element is present")
    else
      fail("#{eval}, the '#{attribute}=#{value}' element is NOT present")
  end
end

# #_no_test_step_# When I double click on the span "(.*)"
# #
# When /^I double click on the span "(\w{2,9})=(.*)"$/ do
# |attribute, value,|
#   selector = @browser.span(:"#{attribute}" => value)
#   selector.wait_until_present
#   if eval = selector.exists?
#       selector.double_click
#     else
#       fail("#{eval}, I can't double click on the span '#{attribute}=#{value}'")
#   end
# end
# 
# #_no_test_step_3# When I click on the span "(\w{2,9})=(.*)"
# #
# When /^I click on the span "(\w{2,9})=(.*)"$/ do
# |attribute, value,|
#   selector = @browser.span(:"#{attribute}" => value)
#   selector.wait_until_present
#   if eval = selector.exists?
#       selector.click
#     else
#       fail("#{eval}, I can't click on the span '#{attribute}=#{value}'")
#   end
# end
