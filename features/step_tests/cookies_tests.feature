@step_tests
@cookies

Feature: Tests for cookies_steps

@cookies_step_1
  Scenario: 1 When I clear the cookies from the current domain
    Given I am on the "http://www.whatarecookies.com/cookietest.asp" page
        Then the "id=result" element should be present
        Then the text "No existing cookie was found" should be present
      When I refresh the page
        Then the text "A cookie already existed for this website" should be present
      When I clear the cookies from the current domain
      When I refresh the page
        Then the text "No existing cookie was found" should be present
      When I clear the cookies from the current domain

@cookies_step_2
  Scenario: 1 When I delete the "cookie_name" cookie from the browser
    Given I am on the "http://www.whatarecookies.com/cookietest.asp" page
        Then the "id=result" element should be present
        Then the text "No existing cookie was found" should be present
      When I refresh the page
        Then the text "A cookie already existed for this website" should be present
      When I delete the "dta" cookie from the browser
      When I refresh the page
        Then the text "No existing cookie was found" should be present
      When I clear the cookies from the current domain


# if you make any changes to the cookies_steps.rb you should run the following test
#
# => cucumber -s -t @cookies
#
