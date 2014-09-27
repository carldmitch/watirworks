@step_tests
@element
Feature: Test for element_steps

@element_step_1
  Scenario: 1 When I click on the "attribute=value" element
    Given I am on the "http://the-internet.herokuapp.com" page
      When I click on the "css=a[href$=login]" element
        Then the url should include "login"

@element_step_2
  Scenario: 2 When I mouse over the "attribute=value" element
    Given I am on the "http://8tracks.com/carldmitch/sleep-music" page
        Then I pause for "2" seconds
        Then the "id=zoom" element should not be visible
      When I mouse over the "css=h2#mix_name.graybox" element
        Then the "css=div#image_controls.graybox" element should be present
        Then the "css=div#image_controls.graybox" element should be visible

@element_step_3
  Scenario: 3 When I wait for the "attribute=value" element to be present
    Given I am on the "http://the-internet.herokuapp.com" page
      When I click on the link "css=a[href$=login]"
      When I wait for the "id=username" element to be present
      When I set the text field "id=username" to "tomsmith"
        Then the text field "id=username" should include the text "tomsmith"
      When I set the text field "id=password" to "SuperSecretPassword!"
        Then the text field "id=password" should include the text "SuperSecretPassword!"
        Then the "class=success" element should not be present
      When I click on the "text=Login" element
      When I wait for the "class=success" element to be present

@element_step_4
  Scenario: 4 Then the "attribute=value" element should contain the text "some_text"
    Given I am on the "http://the-internet.herokuapp.com" page
        Then the "css=h1.heading" element should contain the text "Welcome to the Internet"

@element_step_5
  Scenario: 5 Then the "attribute=value" element should not contain the text "some_text"
    Given I am on the "http://the-internet.herokuapp.com" page
        Then the "css=h1.heading" element should not contain the text "not present"

@element_step_6
  Scenario: 6 Then the "attribute=value" element should have the exact value of "exact"
    Given I am on the "http://the-internet.herokuapp.com/login" page
      When I set the text field "id=username" to "Carl Mitchell"
        Then the "id=username" element should have the exact value of "Carl Mitchell"

@element_step_7
  Scenario: 7 Then the "attribute=value" element should be present
    Given I am on the "http://8tracks.com/carldmitch/sleep-music" page
      When I mouse over the "css=h2#mix_name.graybox" element
        Then the "css=div#image_controls.graybox" element should be present

@element_step_8
  Scenario: 8 Then the "attribute=value" element should not be present
    Given I am on the "http://the-internet.herokuapp.com" page
        Then the "css=div#image_controls.graybox" element should not be present

@element_step_9
  Scenario: 9 Then the "attribute=value" element should be visible
    Given I am on the "http://8tracks.com/carldmitch/sleep-music" page
        Then the "css=div#image_controls.graybox" element should not be visible
      When I mouse over the "id=mix_details" element
        Then the "css=div#image_controls.graybox" element should be visible

@element_step_10
  Scenario: 10 Then the "attribute=value" element should not be visible
    Given I am on the "http://8tracks.com/carldmitch/sleep-music" page
        Then the "css=div#image_controls.graybox" element should not be visible
      When I mouse over the "id=play_area" element
        Then the "css=div#image_controls.graybox" element should be visible

@element_step_11
  Scenario: 11 Then the "attribute=value" element should have a style property of "style_prop:style_value"
    Given I am on the "http://the-internet.herokuapp.com" page
        Then the "css=h1.heading" element should have a style property of "font-size:44px"
        Then the "css=h1.heading" element should have a style property of "font-style:normal"

@element_step_12
  Scenario: 12 Then the "attribute=value" element should not have a style property of "style_prop:style_value"
    Given I am on the "http://the-internet.herokuapp.com" page
        Then the "css=h1.heading" element should not have a style property of "font-size:33px"
        Then the "css=h1.heading" element should have a style property of "font-style:normal"

@element_step_13
  Scenario: 13 Then there should be exactly "number_of" of the "attribute=value" element
    Given I am on the "http://the-internet.herokuapp.com" page
        Then there should be exactly "26" of the "css=ul li a" element

@element_step_14
  Scenario: 14 Then there should be less than "number_of" of the "attribute=value" element
        Then there should be less than "30" of the "css=ul li a" element
        # Then there should be less than "20" of the "css=ul li a" element

@element_step_15
  Scenario: 15 Then there should be more than "number_of" of the "attribute=value" element
        Then there should be more than "15" of the "css=ul li a" element
        # Then there should be more than "30" of the "css=ul li a" element

@element_step_16
  Scenario: 16 Then there should be at least "number_of" of the "attribute=value" element
        Then there should be at least "15" of the "css=ul li a" element

@element_step_17
  Scenario: 17 Then there should be at most "number_of" of the "attribute=value" element
        Then there should be at most "30" of the "css=ul li a" element

@element_step_18
  Scenario: 18 When I click on the "attribute=value" element until it is no longer present
    Given I am on the "www.sharecare.com" page
      When I click on the "css=div.carousel-next" element until it is no longer present

@element_step_19
  Scenario: Then the meta "attribute=value" element should be present
    Given I am on the "www.sharecare.com" page
        Then the meta "name=title" element should be present
        Then the meta "content=article" element should be present

@element_step_20
  Scenario: 20 Then the meta "attribute=value" content contains "meta_content"
    Given I am on the "www.sharecare.com" page
        Then the meta "name=title" content contains "Expert Health Information"

@element_step_21
  Scenario: Then the meta property "value" content contains "meta_content"
    Given I am on the "www.sharecare.com" page
        Then the meta property "og:type" content contains "article"
        Then the meta property "description" content contains "interactive platform"

@element_step_22
  Scenario: 20 When I focus on the "attribute=value" element
    Given I am on the "www.sharecare.com" page
      When I focus on the "id=sharecare-footer" element
        Then I pause for "2" seconds


# if you make any changes to the cookies_steps.rb you should run the following test
#
# => cucumber -s -t @element
#
