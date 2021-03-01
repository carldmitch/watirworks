@step_tests
@ruby

Feature: Tests for ruby

  @ruby_step_01
  Scenario: 1 Then I pause for "(.*)" seconds
    Given I am on the "https://time.gov/" page
    Then I pause for "3" seconds
    Then I pause for "2" seconds
    Then I pause for "1" second

  @ruby_step_02
  Scenario: 2 When I save a screen shot to "local_path"
    Given I am on the "https://time.gov/" page
    When I take a screen shot

  @ruby_step_03
  Scenario: 2 When I save a screen shot to "local_path"
    Given I am on the "https://time.gov/" page
    When I save a screen shot to the "features/screenshots" directory
