@step_tests
@form

Feature: Test for form_steps

@form_step_1
  Scenario: 1 When I submit the form "attribute=value"
    Given I am on the "http://the-internet.herokuapp.com/login" page
      When I set the text field "id=username" to "tomsmith"
      When I set the text field "id=password" to "SuperSecretPassword!"
      When I submit the form "id=login"
      When I wait for the text "You logged into a secure area!" to be present
        Then the url should include "secure"


# if you make any changes to the form_steps.rb you should run the following test
#
# => cucumber -s -t @form
#
