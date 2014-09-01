@step_tests
@ruby

Feature: Tests for ruby

@ruby_test_01
  Scenario: 1 When I pause for "(.*)" seconds
    Given I am on the "http://time.gov/HTML5/" page
      When I pause for "3" seconds
      When I pause for "2" seconds
      When I pause for "1" second

@ruby_test_02
  Scenario: 2 When I save a screen shot to "local_path"
    Given I am on the "www.sharecare.com" page
      When I take a screen shot

