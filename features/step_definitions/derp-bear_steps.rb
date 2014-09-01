# All user customizable text should be enclosed within quotations
#-------------------------------------------------------------------------------------#
=begin
And I choose "pet" from the Select a Pet dropdown
=end
And(/^I choose "(.*)" from the Select a Pet dropdown$/) do
|pet|
  @browser.element(:css => "span.caret").when_present.click
  @browser.link(:text => pet).when_present.click
end

#-------------------------------------------------------------------------------------#
=begin
When I submit the simple form example
=end
When(/^I submit the simple form example$/) do
  selector = @browser.button(:css => "input.submit_button")
  if selector.exists?
    sleep 1
    selector.click
  else
    fail("FAIL!!! I couldn't find the '#{attribute}=#{value}' button")
  end
end

#-------------------------------------------------------------------------------------#
=begin
When I fill out the form with my information
=end
When(/^I fill out the form with my information$/) do
  @browser.text_field(:id => "first_name").when_present.set "Actonite"
  @browser.text_field(:id => "last_name").when_present.set "Bell"
  @browser.text_field(:id => "email").when_present.set "actonitebell@gmail.com"
  @browser.text_field(:id => "website_url").when_present.set "http://www.ionicsecurity.com"
end

#-------------------------------------------------------------------------------------#

=begin
Then I validate the form was successfully submitted
=end
Then(/^I validate the form was successfully submitted$/) do
  @browser.element(:id, 'results').when_present
end