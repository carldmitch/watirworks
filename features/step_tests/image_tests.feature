@step_tests
@image
Feature: Tests for image_steps

@image_step_1
  Scenario: 3 Then the image "attribute=value" should be visible
    Given I am on the "http://watirmelon.com/about/" page
        Then the image "css=img[title=alister_scott]" should be visible

@image_step_2
  Scenario: 4 Then the image "attribute=value" should not be visible
    Given I am on the "https://dl.dropbox.com/u/18859962/brokenimage.html" page
        Then the image "id=watermelon" should not be visible

@image_step_3
  Scenario: Then the image "attribute=value" should contain the alt text "alt_text"
    Given I am on the "http://carldmitch.com/about/" page
        Then the image "class=wp-image-6" should contain the alt text "Terminus"

@image_step_4
  Scenario: Then the image "attribute=value" should contain the src "src_url"
    Given I am on the "http://carldmitch.com/about/" page
        Then the image "class=wp-image-6" should contain the src "//carldmitch.files.wordpress.com/2014/"

@image_step_5
  Scenario: Then the image "attribute=value" should have the height of "img_height"
    Given I am on the "http://carldmitch.com/about/" page
        Then the image "class=wp-image-6" should have the height of "300"

@image_step_6
  Scenario: Then the image "attribute=value" should have the width of "img_width"
    Given I am on the "http://carldmitch.com/about/" page
        Then the image "class=wp-image-6" should have the width of "225"


# if you make any changes to the image_steps.rb you should run the following test
#
# => cucumber -s -t @image
#
