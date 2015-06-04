=begin
When I pause for "5" seconds
=end
When /^I pause for "(.*)" seconds?$/ do
| num_secs |
  sleep num_secs.to_i
  if num_secs.to_i == 1
    puts "'%s' second later" % [num_secs]
  else
    puts "'%s' seconds later" % [num_secs]
  end
end

=begin
When I take a screen shot
=end
When /^I take a screen shot$/ do
  sleep 1
  time = Time.now.strftime("%Y_%m_%d-%H_%M_%S")
  @browser.screenshot.save "features/screenshots/#{time}.png"
  puts "Your screenshot was saved to 'features/screenshots/#{time}.png'"
  puts "open features/screenshots/#{time}.png"
end

=begin
When I save a screen shot to the "local_path" directory
=end
When /^I save a screen shot to the "(.*)" directory$/ do
| local_path |
  sleep 1
  time = Time.now.strftime("%Y_%m_%d-%H_%M_%S")
  @browser.screenshot.save "#{local_path}/#{time}.png"
  puts "Your screenshot was saved to '#{local_path}/#{time}.png'"
  puts "open #{local_path}/#{time}.png"
end
