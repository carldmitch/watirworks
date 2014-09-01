@ionic
@with_req
Feature: Select a Pet
  In order to learn more about our visitors
     As a stakeholder
       I want to ask users to select a pet (maybe its their favorite pet?)
  Scenario:
    Given I am on the "/simple_form_example" page
      When I fill out the form with my information
      And I choose "Snake" from the Select a Pet dropdown
        When I submit the simple form example
          Then I validate the form was successfully submitted


#      cucumber -s -t @ionic
#      cucumber -s -t @with_req