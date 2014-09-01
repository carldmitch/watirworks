@step_tests
@browser

Feature: Tests for browser_steps

@browser_step_1
  Scenario: 1 Given I open up a new clean "(.*)" browser (chrome|ff)
    Given I open up a new clean "ff" browser
        Then I pause for "1" second
      When I close the browser

@browser_step_2
  Scenario: 2 Given I am on the "(.*)" page
    Given I am on the "www.google.com" page
        Then the url should include "www.google.com"

@browser_step_3
  Scenario: 3 Then the url should include "(.*)"
    Given I am on the "www.yahoo.com" page
        Then the url should include "yahoo.com"
      When I go back to the previous page
        Then I pause for "1" seconds
        Then the url should not include "carl"

@browser_step_4
  Scenario: 4 When I refresh the page
    Given I am on the "www.whatarecookies.com/cookietest.asp" page
        Then the "id=result" element should be present
        Then the text "No existing cookie was found" should be present
      When I refresh the page
        Then the text "A cookie already existed for this website" should be present
      When I clear the cookies from the current domain

@browser_step_5
  Scenario: 5 When I go back to the previous page
    Given I am on the "www.google.com" page
        Then I pause for "1" second
    Given I am on the "www.yahoo.com" page
        Then the url should include "yahoo.com"
      When I go back to the previous page
        Then the url should include "google.com"
        Then the url should not include "carl"

@browser_step_6
  Scenario: 6 When I close the browser
    Given I open up a new clean "chrome" browser
        Then I pause for "1" second
      When I close the browser

@browser_step_7
  Scenario: 7 Then the url should be "(.*)"
    Given I am on the "http://the-internet.herokuapp.com/" page
      When I click on the link "text=Drag and Drop"
       Then the url should be "http://the-internet.herokuapp.com/drag_and_drop"

@browser_step_8
  Scenario: 8 Then the url should not include "(.*)"
    Given I am on the "watirmelon.com" page
        Then the url should not include "carldmitch"

@browser_step_9
  Scenario: 8 Then the url should match the given RegEx "(.*)"
    Given I am on the "https://github.com/rspec/rspec-expectations#built-in-matchers" page
        Then the url should match the given RegEx "^http.*rspec.*"


# cucumber -s -t @browser
