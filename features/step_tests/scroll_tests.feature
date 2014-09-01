@step_test
@scroll
Feature: Scrolling API for watir-webdriver

@scroll_test_1
  Scenario: When I scroll to the top of the page
      Given I am on the "www.sharecare.com" page
        When I scroll to the bottom of the page
          Then I pause for "2" seconds
        When I scroll to the top of the page
          Then I pause for "2" seconds

@scroll_test_2
  Scenario: When I scroll to the center of the page
      Given I am on the "www.sharecare.com" page
        When I scroll to the bottom of the page
          Then I pause for "2" seconds
        When I scroll to the top of the page
          Then I pause for "2" seconds
        When I scroll to the center of the page
          Then I pause for "2" seconds

@scroll_test_3
  Scenario: When I scroll to the bottom of the page
      Given I am on the "www.sharecare.com" page
        When I scroll to the bottom of the page
          Then I pause for "2" seconds

@scroll_test_4
  Scenario: When I scroll to the "attribute=value" element
      Given I am on the "www.sharecare.com" page
        When I scroll to the "id=sharecare-footer" element
          Then I pause for "2" seconds
        When I scroll to the "id=today-on-sharecare-sidebar" element
          Then I pause for "2" seconds
