@step_tests
@form

Feature: Test for form_steps

@form_step_1
  Scenario: 1 When I submit the form "attribute=value"
  
    Given I am on the "http://watirwebdriver.com/" page
      When I set the text field "id=s" to "form"
      When I submit the form "id=searchform"
        Then I wait for the span "text=form" to be present    
        Then the url should include "form"
  
