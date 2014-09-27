@step_tests
@select_list

Feature: Tests for select_list

@select_list_test_1
  Scenario: 1 When I select "(.*)" from the dropdown "(\w{2,9})=(.*)"
    Given I am on the "http://rocky-everglades-8041.herokuapp.com/" page
      When I select "Lisbon" from the dropdown "id=city_id"
        Then the dropdown "id=city_id" should have "Lisbon" selected

@select_list_test_2
  Scenario: 2 Then the value of the dropdown "(.*)" should be "(.*)"
    Given I am on the "http://rocky-everglades-8041.herokuapp.com/" page
      When I select "Madrid" from the dropdown "id=city_id"
        Then the value of the dropdown "id=city_id" should be "2"

@select_list_test_3
  Scenario: 3 Then the dropdown "(.*)" should have "(.*)" selected
    Given I am on the "http://rocky-everglades-8041.herokuapp.com/" page
      When I select "Atlanta" from the dropdown "id=city_id"
        Then the dropdown "id=city_id" should have "Atlanta" selected



# cucumber -s -t @select_list
# cucumber -s -t @select_list_test_1
