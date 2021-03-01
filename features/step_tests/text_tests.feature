@step_tests
@text

Feature: Tests for text_steps

  @text_steps_01
  Scenario: Then the text "some_text" should be present
    Given I am on the "/" page
    When I wait for the text "Get Better Care" to be present

  @text_steps_02
  Scenario: Then the text "some_text" should be present
    Given I am on the "http://watir.com/guides/" page
    When I wait for the text "Guides" to be present
    Then the text "Guides" should be present

  @text_steps_03
  Scenario: Then the text "some_text" should not be present
    Given I am on the "http://watir.com/guides/" page
    When I wait for the text "Guides" to be present
    Then the text "Neter" should not be present

  @text_steps_04
  Scenario: Then the RegEx text "(.*)" should be present
    Given I am on the "http://watir.com/guides/" page
    When I wait for the text "Guides" to be present
    Then the RegEx text "^G\w*\sS\w{6}$" should be present
