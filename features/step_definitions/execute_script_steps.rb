=begin execute_script_step_1
# DEPRECATED Use "When I scroll to the..." instead
When I scroll up the page "pixels" pixels
=end
When /^I scroll up the page "(.*)" pixels$/ do
|pixels|
  @browser.execute_script("window.scrollBy(0,-#{pixels})")
end

=begin execute_script_step_2
# DEPRECATED Use "When I scroll to the..." instead
When I scroll down the page "pixels" pixels
=end
When /^I scroll down the page "(.*)" pixels$/ do
|pixels|
  @browser.execute_script("window.scrollBy(0,#{pixels})")
end





# =begin execute_script_step_5
# Then the javascript variable "(.*)" should contain "(.*)"
# =end
# Then /^the javascript variable "(.*)" should contain "(.*)"$/ do
# | js_var, some_value |
#   js_value = @browser.execute_script("return #{js_var}")
#   if js_value.include? some_value
#     puts("TRUE!!! the javascript variable '#{js_var}' returned '#{js_value}'")
#   else
#     fail("FAIL!!!! the javascript variable '#{js_var}' returned '#{js_value}'")
#   end
# end

# =begin execute_script_step_6
# Then the javascript variable "(.*)" should be the same as "(.*)"
# =end
# Then /^the javascript variable "(.*)" should be the same as "(.*)"$/ do
# | first_js_var, second_js_var |
#   get_first_value = @browser.execute_script("return #{first_js_var}")
#   get_second_value = @browser.execute_script("return #{second_js_var}")
#   eval = get_first_value == get_second_value
#   if eval == true
#     puts("TRUE!!! '#{first_js_var}' returned '#{get_first_value}'")
#     puts("TRUE!!! '#{second_js_var}' returned '#{get_second_value}'")
#   else
#     fail("FAIL!!! '#{first_js_var}' returned '#{get_first_value}'")
#     fail("FAIL!!! '#{second_js_var}' returned '#{get_second_value}'")
#   end
# end

# =begin execute_script_step_7
# Then the javascript variable "(.*)" should not contain "(.*)"
# =end
# Then /^the javascript variable "(.*)" should not contain "(.*)"$/ do
# |js_var, some_value|
#   js_value = @browser.execute_script("return #{js_var}")
#   if !(js_value.include? some_value)
#     puts("TRUE!!! the javascript variable '#{js_var}' returned '#{js_value}'")
#   else
#     fail("FAIL!!!! the javascript variable '#{js_var}' returned '#{js_value}'")
#   end
# end

# =begin execute_script_step_8
# When I wait for the javascript variable "(.*)" to contain "(.*)"
# =end
# When /^I wait for the javascript variable "(.*)" to contain "(.*)"$/ do
# | js_var, some_value |
#   get_value = @browser.execute_script("return #{js_var}")
#   eval = get_value.include? some_value
#   status = Timeout::timeout(200) {
#     until eval do
#       js_value = @browser.execute_script("return #{js_var}")
#       eval = js_value.include? some_value
#     end
#   }
#   time = Time.new.strftime("at %r")
#   js_value = @browser.execute_script("return #{js_var}")
#   puts("The javascript variable '#{js_var}' returned '#{js_value}' at '#{time}'")
# end

# =begin execute_script_step_9
# Then the javascript variable "(.*)" should be empty
# =end
# Then /^the javascript variable "(.*)" should be empty$/ do
# | js_var |
#   eval = @browser.execute_script("return #{js_var}")
#   if eval == nil
#     puts("TRUE!!! the javascript variable '#{js_var}' returned '#{eval}'")
#   else
#     fail("FAIL!!!! the javascript variable '#{js_var}' returned '#{eval}'")
#   end
# end

# =begin execute_script_step_10
# Then the javascript variable "(.*)" should match the regex "(.*)"
# =end
# Then /^the javascript variable "(.*)" should match the regex "(.*)"$/ do
# | js_var, some_value |
#   js_value = @browser.execute_script("return #{js_var}")
#   # if js_value.should =~ /#{some_value}/  [should is deprecated]
#   # https://github.com/rspec/rspec-expectations#regular-expressions
#   if expect(js_value).to match(/#{some_value}/)
#     puts("TRUE!!! the javascript variable '#{js_var}' returned '#{js_value}'")
#   else
#     fail("FAIL!!!! the javascript variable '#{js_var}' returned '#{js_value}'")
#   end
# end
