@step_tests
@send_keys

Feature: Browser#send_keys-instance_method

  @send_keys_1
  Scenario: send_keys
    Given I am on the "https://the-internet.herokuapp.com/windows" page
    When I press the "enter" key on the "a[href='/windows/new']" element
    When I focus on the new window
    Then the url should include "windows/new"

  @send_keys_2
  Scenario: send_keys
    Given I am on the "https://the-internet.herokuapp.com/key_presses" page
    When I press the "space" key "1" time
    Then the text "You entered: SPACE" should be present
    When I press the "space" key "2" times
    When I press the "page_up" key "1" time
    Then the text "You entered: PAGE_UP" should be present
    When I press the "page_up" key "2" times
