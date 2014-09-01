=begin alert_step_1
When I dismiss the alert
=end
When /^I dismiss the alert$/ do
  if @browser.alert.exists?
    #  @browser.alert.close ##=> TODO this stopped working 2014.09.22
     @browser.alert.ok
  else
    fail("FAIL!!!! I wasn't able to find the alert")
  end
end

#####################################################

=begin alert_step_2
When I confirm the alert
=end
When /^I confirm the alert$/ do
  if @browser.alert.exists?
     @browser.alert.ok
  else
    fail("FAIL!!!! I wasn't able to find the alert")
  end
end

#####################################################

=begin alert_step_3
Then the alert should exist
=end
Then /^the alert should exist$/ do
  if @browser.alert.exists?
    puts "JS Alert indeed exists"
  else
    fail("FAIL!!!! I wasn't able to find the alert")
  end
end

#####################################################

=begin alert_step_4
When I display the alert text
=end
Then /^I display the alert text$/ do
  if @browser.alert.exists?
    puts @browser.alert.text
  else
    fail("FAIL!!!! I wasn't able to find the alert")
  end
end

#####################################################

# if you make any changes to the alert_steps.rb you should run the following test
#
# => cucumber -s -t @alert
#
