#step_tests
#debug #pry #breakpoint

Feature: Tests for debug_steps

@debug_step_1
  Scenario: 1 When I set a breakpoint
    Given I am on the "www.google.com" page
    Given I am on the "www.yahoo.com" page
        Then the url should include "yahoo.com"
      When I go back to the previous page
#
# I don't want to actually run this with the other step tests
      When I set a breakpoint
#
        Then I pause for "1" seconds
        Then the url should include "google.com"
        Then the url should not include "carl"


# if you make any changes to the debug_steps.rb you should run the following test
#
# => cucumber -s -t @debug
#
