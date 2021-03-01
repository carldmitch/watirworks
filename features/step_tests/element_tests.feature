@step_tests
@element

Feature: Test for element_steps

  @element_step_1
  Scenario: 1 When I click on the "attribute=value" element
    Given I am on the "http://the-internet.herokuapp.com" page
    When I click on the "a[href$=login]" element
    Then the url should include "login"

  @element_step_2
  Scenario: 2 When I mouse over the "attribute=value" element
    Given I am on the "https://the-internet.herokuapp.com/hovers" page
    Then I pause for "2" seconds
    Then the "a[href='/users/1']" element should not be present
    When I mouse over the "#content div:nth-child(3) > img" element
    Then the "a[href='/users/1']" element should be present


  @element_step_3
  Scenario: 3 When I wait for the "attribute=value" element to be present
    Given I am on the "http://the-internet.herokuapp.com" page
    When I click on the link "a[href$=login]"
    When I wait for the "#username" element to be present
    When I set the text field "#username" to "tomsmith"
    Then the text field "#username" should include the text "tomsmith"
    When I set the text field "#password" to "SuperSecretPassword!"
    Then the text field "#password" should include the text "SuperSecretPassword!"
    Then the ".success" element should not be present
    When I click on the element with the text "Login"
    When I wait for the ".success" element to be present

  @element_step_4
  Scenario: 4 Then the "attribute=value" element should contain the text "some_text"
    Given I am on the "http://the-internet.herokuapp.com" page
    Then the "h1.heading" element should contain the text "Welcome to the-internet"

  @element_step_5
  Scenario: 5 Then the "attribute=value" element should not contain the text "some_text"
    Given I am on the "http://the-internet.herokuapp.com" page
    Then the "h1.heading" element should not contain the text "not present"

  @element_step_6
  Scenario: 6 Then the "attribute=value" element should have the exact value of "exact"
    Given I am on the "http://the-internet.herokuapp.com/login" page
    When I set the text field "#username" to "Carl Mitchell"
    Then I pause for "3" seconds
    Then the "#username" element should have the exact value of "Carl Mitchell"

  @element_step_7
  Scenario: 7 Then the "attribute=value" element should exist
    Given I am on the "https://the-internet.herokuapp.com/hovers" page
    Then the "a[href='/users/1']" element should exist
    Then the "a[href='/users/1']" element should not be present
    When I mouse over the "div.figure img" element
    Then the "a[href='/users/1']" element should be present

  @element_step_8
  Scenario: 8 Then the "attribute=value" element should not exist
    Given I am on the "https://the-internet.herokuapp.com/hovers" page
    Then the "a[href='/users/4']" element should not exist

  @element_step_9
  Scenario: 9 Then the "attribute=value" element should be present
    Given I am on the "https://the-internet.herokuapp.com/hovers" page
    Then the "a[href='/users/1']" element should not be present
    When I mouse over the "div.figure img" element
    Then the "a[href='/users/1']" element should be present

  @element_step_10
  Scenario: 10 Then the "[attribute=value]" element should not be present
    Given I am on the "https://the-internet.herokuapp.com/hovers" page
    Then the "a[href='/users/1']" element should not be present
    When I mouse over the "div.figure img" element
    Then the "a[href='/users/1']" element should be present

  @element_step_11
  Scenario: 11 Then the "attribute=value" element should have a style property of "style_prop:style_value"
    Given I am on the "http://the-internet.herokuapp.com" page
    Then the "h1.heading" element should have a style property of "font-size:44px"
    Then the "h1.heading" element should have a style property of "font-style:normal"

  @element_step_12
  Scenario: 12 Then the "attribute=value" element should not have a style property of "style_prop:style_value"
    Given I am on the "http://the-internet.herokuapp.com" page
    Then the "h1.heading" element should not have a style property of "font-size:33px"
    Then the "h1.heading" element should have a style property of "font-style:normal"

  @element_step_13
  Scenario: 13 Then there should be exactly "number_of" of the "selector" element
    Given I am on the "http://the-internet.herokuapp.com" page
    Then there should be exactly "44" of the "ul li a" element

  @element_step_14
  Scenario: 14 Then there should be less than "number_of" of the "selector" element
    Then there should be less than "50" of the "ul li a" element

  @element_step_15
  Scenario: 15 Then there should be more than "number_of" of the "selector" element
    Then there should be more than "40" of the "ul li a" element

  @element_step_16
  Scenario: 16 Then there should be at least "number_of" of the "selector" element
    Then there should be at least "15" of the "ul li a" element

  @element_step_17
  Scenario: 17 Then there should be at most "number_of" of the "selector" element
    Then there should be at most "44" of the "ul li a" element

  @element_step_18
  Scenario: 18 When I click on the "selector" element until it is no longer present
    Given I am on the "https://www.sharecare.com/health/weight-loss/slideshow/14-easy-ways-to-burn-100-calories" page
    When I click on the "a.slideshow__next" element until it is no longer present

  @element_step_19
  Scenario: Then the meta "attribute=value" element should be present
    Given I am on the "www.sharecare.com" page
    Then the meta "name=description" element should be present
    Then the meta "content=website" element should be present

  @element_step_20
  Scenario: 20 Then the meta "attribute=value" content contains "meta_content"
    Given I am on the "www.sharecare.com" page
    Then the meta "name=description" content contains "A health and wellness engagement platform"

  @element_step_21
  Scenario: Then the meta property "value" content contains "meta_content"
    Given I am on the "www.sharecare.com" page
    Then the meta property "og:type" content contains "website"
    Then the meta property "description" content contains "A health and wellness engagement platform"
