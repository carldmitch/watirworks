@step_tests
@input
Feature: Tests for input_steps

  @input_step_01
  Scenario: Then the input field "selector" should be enabled
    Given I am on the "http://www.w3schools.com/jsref/tryjsref_text_disabled2.htm" page
    Then the input field "#myText" should be enabled

  @input_step_02
  Scenario: Then the input field "selector" should not be enabled
    Given I am on the "http://www.w3schools.com/jsref/tryjsref_text_disabled2.htm" page
    When I click on the button with the text "Disable Text field"
    Then the input field "#myText" should not be enabled

  @input_step_03
  Scenario: Then the input field "selector" should be required
    Given I am on the "http://www.quirksmode.org/html5/tests/inputs_attributes.html" page
    Then the input field "[name=required]" should be required

  @input_step_04
  Scenario: Then the input field "selector" should not be required
    Given I am on the "http://www.quirksmode.org/html5/tests/inputs_attributes.html" page
    Then the input field "[name=autofocus]" should not be required

  @input_step_05
  Scenario: Then the cursor should autofocus on the "selector" input field
    Given I am on the "http://www.quirksmode.org/html5/tests/inputs_attributes.html" page
    Then the cursor should autofocus on the "[name=autofocus]" input field

  @input_step_06
  Scenario: Then the placeholder text inside the "selector" input field should be "ph_text"
    Given I am on the "https://circle.so/start" page
    Then the placeholder text inside the "#name" input field should include "First Name"
    Then the placeholder text inside the "#email" input field should include "Email"

  @input_step_07
  Scenario: Then the input field "selector" should be readonly
    Given I am on the "http://www.quirksmode.org/html5/tests/inputs_attributes.html" page
    Then the input field "[name=readonly]" should be readonly

  @input_step_08
  Scenario: Then the input field "selector" should not be readonly
    Given I am on the "http://www.quirksmode.org/html5/tests/inputs_attributes.html" page
    Then the input field "[name=autofocus]" should not be readonly
