@step_tests
@send_keys

Feature: Browser#send_keys-instance_method

  Scenario: send_keys
    Given I am on the "http://8tracks.com/carldmitch" page
     When I press the "space" key "1" time
     When I press the "space" key "2" times
     When I press the "page_up" key "1" time
     When I press the "page_up" key "2" times

  Scenario: send_keys
    Given I am on the "http://8tracks.com/carldmitch" page
    When I press the "enter" key on the "css=a.external_account" element
      Then I pause for "2" seconds
    When I wait for the popup and focus it
      Then the url should include "carldmitch"
    When I close the current tab


# if you make any changes to the send_keys_steps.rb you should run the following test
#
# => cucumber -s -t @send_keys
#
