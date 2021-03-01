@step_tests
@text_field

Feature: text_field

  @text_field_steps_01
  Scenario: When I set the text field "attribute=value" to "type"
    Given I am on the "http://the-internet.herokuapp.com/login" page
    When I set the text field "#username" to "Carl Mitchell"
    Then the "#username" element should have the exact value of "Carl Mitchell"

  @text_field_steps_02
  Scenario: When I set the text field "attribute=value" with a random email address
    Given I am on the "http://the-internet.herokuapp.com/login" page
    When I set the text field "#username" with a random email address
    Then the text field "#username" should include the text ".com"

  @text_field_steps_03
  Scenario: When I set the text field "attribute=value" with a timestamp
    Given I am on the "http://the-internet.herokuapp.com/login" page
    When I set the text field "#username" with a timestamp
    Then the text field "#username" should include the text "UTC"

  @text_field_steps_04
  Scenario: When I set the text field "attribute=value" with a timestamp
    Given I am on the "http://the-internet.herokuapp.com/login" page
    When I set the text field "#username" with random text
    Then I pause for "1" seconds

  @text_field_steps_05
  Scenario: When I set the text field "attribute=value" with a timestamp
    Given I am on the "http://the-internet.herokuapp.com/login" page
    When I set the text field "#username" with random text
    Then I pause for "1" seconds
    When I clear the text field "#username"
    Then I pause for "1" seconds

  @text_field_steps_06
  Scenario: When I set the text field "attribute=value" with a timestamp
    Given I am on the "http://the-internet.herokuapp.com/login" page
    Then I pause for "1" seconds
    Then the input field "#username" should be editable

  @text_field_steps_07
  Scenario: When I set the text field "attribute=value" with a timestamp
    Given I am on the "http://www.javascriptkit.com/javatutors/deform2.shtml" page
    Then I pause for "1" seconds
    Then the input field "input[value='Can\'t submit this!']" should be editable
    Then the input field "input[value='Disabled text box']" should not be editable

  @text_field_steps_08
  Scenario: When I set the text field "attribute=value" to a random zip code
    Given I am on the "http://the-internet.herokuapp.com/login" page
    When I set the text field "#username" to a random zip code
    Then I pause for "1" seconds
    When I clear the text field "#username"
    Then I pause for "1" seconds
