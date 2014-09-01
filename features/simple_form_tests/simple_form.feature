@ionic
@simple_form
Feature: Simple Form Example
  In order to bastardize a BDD tool into a QA tool
  As a Web Automation Engineer
  I want to use a framework of generic rules otherwise I should just use Ruby with Watir
    Scenario Outline: one line for each 'action' and 'validation' taken
      Given I am on the "http://derp-bear.herokuapp.com/forms/simple_form_example" page
        When I set the text field "id=first_name" to "<fname>"
        When I set the text field "id=last_name" to "Mitchell"
        When I set the text field "id=email" to "carldmitch@gmail.com"
        When I set the text field "id=website_url" to "http://www.carldmitch.com"
        When I click on the "css=span.caret" element
        When I click on the link text "<pet>"
          Then I pause for "1" second
        When I click on the button "type=submit"
          Then I wait for the text "Thank you" to be present

  Examples:
  | fname  | pet    |
  | Kat    | Cat    |
  | Ruff   | Dog    |
  | Hopper | Rabbit |
  | Cobra  | Snake  |
  | Wilbur | Horse  |



#      cucumber -s -t @ionic
#      cucumber -s -t @simple_form