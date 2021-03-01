@step_tests
@image
Feature: Tests for image_steps

  @image_step_1
  Scenario: 3 Then the image "selector" should be visible
    Given I am on the "https://the-internet.herokuapp.com/broken_images" page
    Then the image "img[src='img/avatar-blank.jpg']" should be visible

  @image_step_2
  Scenario: 4 Then the image "selector" should not be visible
    Given I am on the "https://the-internet.herokuapp.com/broken_images" page
    Then the image "img[src='hjkl.jpg']" should not be visible

  @image_step_3
  Scenario: Then the image "selector" should contain the alt text "alt_text"
    Given I am on the "https://saucelabs.com/" page
    Then the image "img[src*='home-tests-completed']" should contain the alt text "test completed"

  @image_step_4
  Scenario: Then the image "selector" should contain the src "src_url"
    Given I am on the "https://saucelabs.com/" page
    Then the image "img[title='test completed']" should contain the src "home-tests-completed"

  @image_step_5
  Scenario: Then the image "selector" should have the height of "img_height"
    Given I am on the "https://saucelabs.com/" page
    Then the image "img[title='test completed']" should have the height of "252"

  @image_step_6
  Scenario: Then the image "selector" should have the width of "img_width"
    Given I am on the "https://saucelabs.com/" page
    Then the image "img[title='test completed']" should have the width of "400"


# if you make any changes to the image_steps.rb you should run the following test
#
# => cucumber -t @image
# => cucumber features/step_tests/image_tests.feature
#
