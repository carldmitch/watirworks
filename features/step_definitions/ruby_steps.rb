=begin
When I pause for "5" seconds
=end
When /^I pause for "(.*)" seconds?$/ do
| num_secs |
  sleep num_secs.to_i
  puts "'%s' seconds later" % [num_secs]
end

=begin
When I take a screen shot
=end
When /^I take a screen shot$/ do
  sleep 1
  time = Time.now.ctime
  @browser.screenshot.save "features/screenshots/#{time}.png"
end

=begin
When I save a screen shot to the "local_path" directory
=end
When /^I save a screen shot to the "(.*)" directory$/ do
| local_path |
  sleep 1
  time = Time.now.ctime
  @browser.screenshot.save "#{local_path}/#{time}.png"
end
