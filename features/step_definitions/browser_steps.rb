=begin browser_step_1
Given I open up a new clean "chrome" browser
=end
Given /^I open up a new clean "(.*)" browser$/ do
|new_browser|
# types currently supported (ff|chrome|phantomjs|safari)
  @browser = Watir::Browser.new :"#{new_browser}"
end
=begin
Currently this will open a new browser instance (ff)
You will have to manually close the browser when your done or
you will end up with too many browsers open
=end

#####################################################

=begin browser_step_2
Given I am on the "url" page
=end
Given /^I am on the "(.*)" page$/ do
|url|
  start_time = Time.now
# The "if" below is so you can set a universal domain page (see "support/env.rb" file)
  if ( url =~ /^\/(.*)/ )
    @browser.goto(BASE_URL + "#{url}")
    puts @browser.url
    # load_secs = @browser.performance.summary[:response_time]/1000.0
  else
    @browser.goto url
    # load_secs = @browser.performance.summary[:response_time]/1000.0
  end
  end_time = Time.now
  elapsed_seconds = (end_time - start_time).round(2)
  puts "Response Time: #{elapsed_seconds} seconds."
  # puts "Response Time: #{load_secs} seconds."
end

#####################################################

=begin browser_step_3
Then the url should include "included_url"
=end
#=> This will pass if the string passed matches any part of the url
#=> ex. www.google.com, will be 'true' if the user passes 'google'
Then /^the url should include "(.*)"$/ do
|included_url|
  my_url = @browser.url
  eval = @browser.url.include? "#{included_url}"
  if eval == true
    puts("TRUE!!! '#{included_url}' is included in '#{my_url}'")
  else
    fail("FAIL!!!! '#{included_url}' is NOT included in '#{my_url}'")
  end
end

#####################################################

=begin browser_step_4
When I refresh the page
=end
# This will refresh the page after the previous step is finished
# http://rubydoc.info/gems/watir-webdriver/Watir/Browser#refresh-instance_method
When /^I refresh the page$/ do
  @browser.refresh
end

#####################################################

=begin browser_step_5
When I go back to the previous page
=end
# This rule is not ideal to use unless you are specifically testing
# what would happen if the user were to press the back button.
# Don't use this rule to navigate between different testing scenarios
When /^I go back to the previous page$/ do
  sleep 1
  @browser.back
  sleep 1
end

#####################################################

=begin browser_step_6
When I close the browser
=end
# You really shouldn't need this line
# Use this in conjunction with "Given I open a new clean browser"
When /^I close the browser$/ do
  @browser.close
end

#####################################################

=begin browser_step_7
Then the url should be "some_url"
This evaluates that the given value exactly matches the current url
=end
Then /^the url should be "(.*)"$/ do
|some_url|
  result = @browser.url
  if @browser.url == some_url
    puts("TRUE!!! The url returned '#{result}'")
  else
    fail("FAIL!!! The url returned '#{result}'")
  end
end

#####################################################

=begin browser_step_8
Then the url should not include "included_url"
This evaluates that the given value is NOT included within the current url
=end
Then /^the url should not include "(.*)"$/ do
|included_url|
  result = @browser.url
  if !(@browser.url.include? "#{included_url}")
    puts("TRUE!!! '#{included_url}' is NOT included in '#{result}'")
  else
    fail("FAIL!!!! '#{included_url}' is included in '#{result}'")
  end
end


=begin browser_step_9
Then the url should match the given RegEx "regex_text"
=end
# https://github.com/rspec/rspec-expectations#built-in-matchers
# you have to have 'gem rpsec' for this to work
Then /^the url should match the given RegEx "(.*)"$/ do
 |regex_text|
  result = @browser.url
   if expect(result).to match(/#{regex_text}/)
     puts("True!!! '#{result}' DID match the RegEx '#{regex_text}'")
   else
     fail("FAIL!!!! '#{result}' did NOT match '#{regex_text}'")
   end
 end
