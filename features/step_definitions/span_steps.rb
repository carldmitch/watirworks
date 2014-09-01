=begin span_step_01
Then I wait for the span "attribute=value" to be present
=end
Then /^I wait for the span "(\w{2,9})=(.*)" to be present$/ do
|attribute, value|
  start_time = Time.now
  selector = @browser.span(:"#{attribute}" => value)
  selector.wait_until_present
  end_time = Time.now
  elapsed_seconds = (end_time - start_time).round(2)
  if selector.exists?
      puts("TRUE!!! the span '#{attribute}=#{value}' presented itself after #{elapsed_seconds} seconds")
    else
      fail("FALSE!!! the span '#{attribute}=#{value}' element is NOT present")
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
