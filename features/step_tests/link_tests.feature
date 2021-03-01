@step_tests
@link

Feature: Tests for link_steps

  @link_step_1
  Scenario: When I click on the link "selector"
    Given I am on the "http://en.wikipedia.org/wiki/Ruby_on_Rails" page
    When I click on the link "a[title='Web application framework']"
    Then the url should include "Web_framework"

  @link_step_2
  Scenario: When I click on the link with the text "txt_link"
    Given I am on the "http://en.wikipedia.org/wiki/Ruby_on_Rails" page
    When I click on the link with the text "web application framework"
    Then the url should include "Web_framework"

  @link_step_3
  Scenario: When I open in a new tab the link "attribute=value"
    Given I am on the "http://the-internet.herokuapp.com/" page
    When I open in a new tab the link "a[href='/abtest']"
    Then the "div.example h3" element should contain the text "A/B Test"
    When I close the current tab
    Then the url should not include "abtest"


  @link_step_4
  Scenario: When I open in a new tab the link "attribute=value"
    Given I am on the "http://the-internet.herokuapp.com/" page
    When I open in a new tab the link "a[href='/abtest']" and focus it
    Then the url should include "abtest"
    When I close the current tab
    Then the text "Welcome to the-internet" should be present

# if you make any changes to the link_steps.rb you should run the following test
#
# => cucumber -s -t @link
# => cucumber -s -t @link_step_3
# => cucumber KEEPOPEN=true -s -t @link_step_3
#
