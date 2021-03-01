=begin window_test_1
When I set the browser size to "width x height"
=end
When /^I set the browser size to "(\d+)\s?x\s?(\d+)"$/ do | width, height |
  @browser.window.resize_to("#{width}", "#{height}")
end

=begin window_test_2
When I close the popup titled "pop_title"
=end
When /^I close the popup titled "(.*)"$/ do | pop_title |
  element = @browser.window(title: pop_title)
  if element.present?
    element.close
  else
    fail
  end
end

=begin window_test_3
When I close the current window
When I close the current tab
=end
When /^I close the current window|tab$/ do
  @browser.window.close
  sleep 1
end

=begin window_test_4
When I wait for the popup and close it
=end
When /^I wait for the popup and close it$/ do
  sleep 1
  @browser.switch_window
  sleep 1
  @browser.window.close
  sleep 1
end

=begin window_test_5
When I wait for the popup and focus it
=end
When /^I wait for the popup and focus it$/ do
  sleep 1
  @browser.switch_window
end

=begin window_test_6
When I focus on the main window
=end
When /^I focus on the main window$/ do
  sleep 1
  @browser.switch_window
end

=begin window_test_7
When I focus on the new window
=end
When /^I focus on the new window$/ do
  sleep 1
  @browser.switch_window
end
