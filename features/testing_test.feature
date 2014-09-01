@testing
  Feature: Testing
    Scenario: testing
      Given I am on the "www.sharecare.com" page
        When I click on the "id=jsShowSourceButton" element

        Then I pause for "5" seconds
        Then I pause for "5" seconds

#

#
#
#
#
#
#
# cucumber -s -t @testing
