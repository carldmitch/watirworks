@step_tests
@span

Feature: Test for span_steps

@span_step_01
  Scenario: 1 Then I wait for the span "attribute=value" to be present
    Given I am on the "http://watirwebdriver.com/" page
      When I set the text field "id=s" to "form"
      When I submit the form "id=searchform"
        Then I wait for the span "text=form" to be present
        Then the url should include "form"

# if you make any changes to the span_steps.rb you should run the following test
#
# => cucumber -s -t @span
# => cucumber -s -t @span_step_01
#
