@step_tests
@attribute
@2019

Feature: CSS Selectors and How to find them

  Scenario: Given I get to a page
    Given I am on the "http://the-internet.herokuapp.com" page

  Scenario: Attribute selectors select an element using the presence of a given attribute or attribute value
    Then the "h1[class]" element should be present
    Then the "[class=heading]" element should be present
    Then there should be exactly "2" of the "[class~=large-12]" element
    Then there should be exactly "3" of the "[class~=columns]" element
    Then there should be exactly "3" of the "[class|=large]" element
    Then there should be exactly "3" of the "[class^=large]" element
    Then there should be exactly "3" of the "[class$=lumns]" element
    Then there should be exactly "4" of the "[class*=large]" element
    Then there should be exactly "3" of the "[class*=columns]" element
