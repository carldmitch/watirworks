@step_tests
@span

Feature: Test for span_steps

  Scenario: 1 When I wait for the span text "(.*)" to be present
    Given I am on the "http://watirwebdriver.com/" page
      When I set the text field "id=s" to "form"
      When I submit the form "id=searchform"
        Then I wait for the span "text=form" to be present      
        Then the url should include "form"
  
