@step_tests
@ruby

Feature: Tests for ruby

@ruby_step_01
  Scenario: 1 When I pause for "(.*)" seconds
    Given I am on the "http://time.gov/HTML5/" page
      When I pause for "3" seconds
      When I pause for "2" seconds
      When I pause for "1" second

@ruby_step_02
  Scenario: 2 When I save a screen shot to "local_path"
    Given I am on the "http://time.gov/HTML5/" page
      When I take a screen shot

@ruby_step_03
  Scenario: 2 When I save a screen shot to "local_path"
    Given I am on the "http://time.gov/HTML5/" page
      When I save a screen shot to the "features/screenshots" directory

# if you make any changes to the ruby_steps.rb you should run the following test
#
# => cucumber -s -t @ruby
#
