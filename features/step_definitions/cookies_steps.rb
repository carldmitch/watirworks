=begin cookie_step_1 
When I clear the cookies from the current domain
Apparently this only clears cookies from the 'current' site|service
TODO need a way to clear the entire cache from the browser
=end
When /^I clear the cookies from the current domain$/ do
  # Rails.cache.clear
  @browser.cookies.clear
end

=begin
When I delete the "cookie_name" cookie from the browser
=end
When /^I delete the "(.*)" cookie from the browser$/ do
  |cookie_name|
  @browser.cookies.delete cookie_name
end
#   @browser.cookies.delete 'dta'

