@step_tests
@checkbox
@2019

Feature: Tests for checkbox_steps

  @checkbox_step_1
  Scenario: 1 When I set the checkbox "(.*)"
    Given I am on the "http://www.ranorex.com/web-testing-examples/" page
    Then the checkbox "#testcheckbox" should not be set
    When I set the checkbox "#testcheckbox"
    Then the checkbox "#testcheckbox" should be set

  @checkbox_step_2
  Scenario: 2 When I clear the checkbox "(.*)"
    Given I am on the "http://www.ranorex.com/web-testing-examples/" page
    When I set the checkbox "#testcheckbox"
    Then the checkbox "#testcheckbox" should be set
    When I clear the checkbox "#testcheckbox"
    When I clear the checkbox "#testcheckbox"
    Then the checkbox "#testcheckbox" should not be set

  @checkbox_step_3
  Scenario: 3 Then the checkbox "(.*)" should be set
    Given I am on the "http://www.ranorex.com/web-testing-examples/" page
    Then the checkbox "#testcheckbox" should not be set
    When I set the checkbox "#testcheckbox"
    Then the checkbox "#testcheckbox" should be set

  @checkbox_step_4
  Scenario: 4 Then the checkbox "(.*)" should not be set
    Given I am on the "http://www.ranorex.com/web-testing-examples/" page
    Then the checkbox "#testcheckbox" should not be set
    When I set the checkbox "#testcheckbox"
    Then the checkbox "#testcheckbox" should be set

# if you make any changes to the checkbox_steps.rb you should run the following test
#
# => cucumber -t @checkbox
# => cucumber features/step_tests/checkbox_tests.feature
#
