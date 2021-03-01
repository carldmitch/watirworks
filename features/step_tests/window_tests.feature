@step_tests
@window

Feature: Tests for window_steps

  @window_test_1
  Scenario: When I set the browser size to "width x height"
    Given I am on the "http://the-internet.herokuapp.com/" page
    When I set the browser size to "800x600"
    When I set the browser size to "950 x 700"
    When I set the browser size to "600x250"
    When I set the browser size to "1200 x 1000"

  @window_test_2
  Scenario: When I close the popup titled "pop_title"
    Given I am on the "http://the-internet.herokuapp.com/windows" page
    When I click on the link with the text "Click Here"
    When I wait for the popup and focus it
    Then the text "New Window" should be present
    When I close the popup titled "New Window"
    Then the text "Opening a new window" should be present

  @window_test_3
  Scenario: When I close the current window
    Given I am on the "http://the-internet.herokuapp.com/windows" page
    When I click on the link with the text "Click Here"
    When I wait for the popup and focus it
    Then the text "New Window" should be present
    Then the text "Opening a new window" should not be present
    When I close the current window
    Then the text "Opening a new window" should be present

  @window_test_4
  Scenario: When I close the current tab
    Given I am on the "http://the-internet.herokuapp.com/windows" page
    When I click on the link with the text "Click Here"
    When I wait for the popup and focus it
    Then the text "New Window" should be present
    Then the text "Opening a new window" should not be present
    When I close the current tab
    Then the text "Opening a new window" should be present

  @window_test_5
  Scenario: When I wait for the popup and close it
    Given I am on the "http://the-internet.herokuapp.com/windows" page
    Then the text "Opening a new window" should be present
    When I click on the link with the text "Click Here"
    When I wait for the popup and close it
    Then the text "Opening a new window" should be present

  @window_test_6
  Scenario: When I wait for the popup and focus it
    Given I am on the "https://the-internet.herokuapp.com/windows" page
    When I click on the link with the text "Click Here"
    When I wait for the popup and focus it
    Then the text "New Window" should be present
    When I close the current window

  @window_test_7
  Scenario: When I focus on the main window
    Given I am on the "https://the-internet.herokuapp.com/windows" page
    When I click on the link with the text "Click Here"
    When I wait for the popup and focus it
    Then the text "New Window" should be present
    When I focus on the main window
    Then the text "New Window" should not be present
    When I focus on the new window
    Then the text "New Window" should be present
    When I close the current window

  @window_test_8
  Scenario: When I focus on the new window
    Given I am on the "https://the-internet.herokuapp.com/windows" page
    When I click on the link with the text "Click Here"
    When I focus on the new window
    Then the text "New Window" should be present
    When I close the current window
    Then the text "New Window" should not be present
