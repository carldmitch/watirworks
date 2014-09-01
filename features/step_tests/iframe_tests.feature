@step_tests
@iframe

Feature: Tests for iframe_steps

@iframe_step_1
  Scenario: 1 When in iframe "(.*)", I put "(.*)" in the text field "(.*)"
    Given I am on the "http://www.w3schools.com/tags/tryit.asp?filename=tryhtml_input_disabled" page
      When in iframe "id=iframeResult", I put "Carl" in the text field "name=fname"
  
@iframe_step_2
  Scenario: 2 When in iframe "(.*)", I click the link "(.*)"
      Given I am on the "http://www.w3schools.com/html/tryit.asp?filename=tryhtml_links" page
        When in iframe "id=iframeResult", I click the link "text=HTML Tutorial"
          Then in iframe "id=iframeResult", the text "HTML HOME" should be present
  
@iframe_step_3
  Scenario: 3 When in iframe "(\w{2,9})=(.*)", I click on the input "(\w{2,9})=(.*)"
    Given I am on the "http://www.w3schools.com/tags/tryit.asp?filename=tryhtml_input_disabled" page
      When in iframe "id=iframeResult", I click on the input "type=submit"
        Then the text "Input was received" should be present
        Then in iframe "id=iframeResult", the text "fname" should be present
  
@iframe_step_4
  Scenario: 4 When in iframe "(\w{2,9})=(.*)", I click the "(\w{2,9})=(.*)" element
    Given I am on the "http://www.w3schools.com/tags/tryit.asp?filename=tryhtml_input_disabled" page
      When in iframe "id=iframeResult", I click the "css=input[type=submit]" element
  
@iframe_step_5
  Scenario: 5 Then I go into the iframe "(.*)" and the css element "(.*)" should be present
    Given I am on the "http://www.w3schools.com/html/tryit.asp?filename=tryhtml_links" page
        Then in iframe "id=iframeResult", the "css=a[href*="default"]" element should be present
  
@iframe_step_6
  Scenario: 6 Then I go into the iframe "(.*)" and the css element "(.*)" should be present
    Given I am on the "http://www.w3schools.com/html/tryit.asp?filename=tryhtml_links" page
        Then in iframe "id=iframeResult", the "css=a[href*="carlos"]" element should not be present
  
@iframe_step_7
  Scenario: 7 Then in iframe "(\w{2,9})=(.*)", the text "(.*)" should be present
    Given I am on the "http://www.w3schools.com/tags/tryit.asp?filename=tryhtml_input_disabled" page
        Then in iframe "id=iframeResult", the text "First" should be present
  
