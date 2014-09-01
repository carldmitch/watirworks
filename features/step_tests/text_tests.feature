@step_tests
@text

Feature: Tests for text_steps

  @test_steps_01
  Scenario: Then the text "some_text" should be present
    Given I am on the "bit.ly/watir-webdriver-demo" page
      When I wait for the text "Watir" to be present

  @test_steps_02
  Scenario: Then the text "some_text" should be present
    Given I am on the "bit.ly/watir-webdriver-demo" page
      When I wait for the text "Watir" to be present
        Then the text "Watir" should be present

  @test_steps_03
  Scenario: Then the text "some_text" should not be present
    Given I am on the "bit.ly/watir-webdriver-demo" page
      When I wait for the text "Watir" to be present
        Then the text "Neter" should not be present

  @test_steps_04
  Scenario: Then the RegEx text "(.*)" should be present
    Given I am on the "bit.ly/watir-webdriver-demo" page
      When I wait for the text "Watir" to be present
    Then the RegEx text "^W.*W.*Demo$" should be present