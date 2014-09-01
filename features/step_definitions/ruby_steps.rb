=begin
When I pause for "5" seconds
=end
When /^I pause for "(.*)" seconds?$/ do
| num_secs |
  sleep num_secs.to_i
  puts "'%s' seconds later" % [num_secs]
end

=begin
When I save a screen shot as "local_path"
=end
When /^I take a screen shot$/ do
  time = Time.now.ctime
  @browser.screenshot.save "features/screenshots/#{time}.png"
end

