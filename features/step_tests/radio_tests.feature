@step_tests
@radio

Feature: Tests for radio_steps

  @radio_step_01
  Scenario: 1 When I set the radio button "(.*)"
    Given I am on the "http://rocky-everglades-8041.herokuapp.com/" page
    When I set the radio button "#age_child"
    Then the radio button "#age_child" should be set

  @radio_step_02
  Scenario: 2 Then the radio button "(\w{2,9})=(.*)" should be set
    Given I am on the "http://rocky-everglades-8041.herokuapp.com/" page
    When I set the radio button "#age_child"
    Then the radio button "#age_child" should be set

  @radio_step_03
  Scenario: 3 Then the radio button "(\w{2,9})=(.*)" should not be set
    Given I am on the "http://rocky-everglades-8041.herokuapp.com/" page
    Then the radio button "#age_child" should not be set
