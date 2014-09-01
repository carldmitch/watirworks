=begin window_test_1
When I set the browser size to "width x height"
=end
When /^I set the browser size to "(\d+)\s?x\s?(\d+)"$/ do
| width, height |
  @browser.window.resize_to("#{width}", "#{height}")
end

=begin window_test_2
When I close the popup titled "pop_title"
=end
When /^I close the popup titled "(.*)"$/ do
| pop_title |
  selector = @browser.window(:title => pop_title)
  selector.wait_until_present
  selector.close
end

=begin window_test_3
When I close the current window
When I close the current tab
=end
When /^I close the current window|tab$/ do
  @browser.windows.last.close
  sleep 1
  @browser.windows.last.use
end

=begin window_test_4
When I wait for the popup and close it
=end
When /^I wait for the popup and close it$/ do
  start_time = Time.now
  @browser.window(:index => 1).wait_until_present
  end_time = Time.now
  elapsed_seconds = (end_time - start_time).round(2)
  @browser.window(:index => 1).close
  @browser.window(:index => 0).use
  puts "#{elapsed_seconds} seconds."
end

=begin window_test_5
When I wait for the popup and focus it
=end
When /^I wait for the popup and focus it$/ do
  start_time = Time.now
  @browser.window(:index => 1).wait_until_present
  @browser.window(:index => 1).use
  end_time = Time.now
  elapsed_seconds = (end_time - start_time).round(2)
  puts "#{elapsed_seconds} seconds."
#  sleep 1
end

=begin window_test_6
When I focus on the main window
=end
When /^I focus on the main window$/ do
  @browser.window(:index => 0).use
end

=begin window_test_7
When I focus on the new window
=end
When /^I focus on the new window$/ do
  @browser.windows.last.use
end
