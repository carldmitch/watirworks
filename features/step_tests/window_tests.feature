@step_tests
@window

Feature: Tests for window_steps

@window_test_1
  Scenario: 1 When I set the browser size to "width x height"
    Given I am on the "http://the-internet.herokuapp.com/" page
      When I set the browser size to "800x600"
      When I set the browser size to "950 x 700"
      When I set the browser size to "600x250"
      When I set the browser size to "1200 x 1000"

@window_test_2
  Scenario: 2 When I close the popup titled "pop_title"
    Given I am on the "www.sharecare.com/login" page
      When I click on the link "id=facebookLoginLink"
      When I close the popup titled "Facebook"

@window_test_3
  Scenario: 3 When I wait for the popup and close it

@window_test_4
  Scenario: 4 When I wait for the popup and close it
    Given I am on the "http://the-internet.herokuapp.com/windows" page
      When I click on the link "text=Click Here"
      When I wait for the popup and close it

@window_test_5
  Scenario: 5 When I wait for the popup and focus it
    Given I am on the "www.sharecare.com/login" page
      When I click on the link "id=facebookLoginLink"
      When I wait for the popup and focus it
      When I close the current window

@window_test_6
  Scenario: 6 When I focus on the main window
    Given I am on the "www.sharecare.com/login" page
      When I click on the link "id=facebookLoginLink"
      When I wait for the popup and focus it
      When I set the text field "id=email" to "carldmitch@facebook.com"
      When I close the current window
      When I focus on the main window
      When I set the text field "id=email" to "carldmitch@facebook.com"

@window_test_7
  Scenario: 7 When I focus on the new window
    Given I am on the "www.sharecare.com/login" page
      When I click on the link "id=facebookLoginLink"
      When I wait for the popup and focus it
      When I set the text field "id=email" to "carldmitch@facebook.com"
      When I close the current window
      When I focus on the main window
      When I set the text field "id=email" to "carldmitch@facebook.com"
