@step_tests
@attribute

Feature: CSS Selectors and How to find them

  Scenario: Given I get to a page
    Given I am on the "http://the-internet.herokuapp.com" page

  Scenario: Attribute selectors select an element using the presence of a given attribute or attribute value
#[attr] Represents an element with an attribute name of attr.
#[attr=value]        ...and whose value is exactly "value".
#[attr~=value] [ ~ ] ...whose value is a whitespace-separated list of words, one of which is exactly "value".
#[attr|=value] [ | ] Its value can be exactly “value” or can begin with “value” immediately followed by “-” (U+002D). It can be used for language subcode matches.
#[attr^=value] [ ^ ] ...and whose value is prefixed by "value".
#[attr$=value] [ $ ] ...and whose value is suffixed by "value".
#[attr*=value] [ * ] ...and whose value contains at least one occurrence of string "value" as substring.

    #FULL SELECTOR  <div #"content" class="large-12 columns">

    Then the "css=h1[class]" element should be present
    Then the "css=[class=heading]" element should be present
    Then there should be exactly "2" of the "css=[class~=large-12]" element
    Then there should be exactly "2" of the "css=[class~=columns]" element
    Then there should be exactly "2" of the "css=[class|=large]" element
    Then there should be exactly "2" of the "css=[class^=large]" element
    Then there should be exactly "2" of the "css=[class$=lumns]" element
    Then there should be exactly "3" of the "css=[class*=large]" element
    Then there should be exactly "2" of the "css=[class*=columns]" element


#
# cucumber -s -t @attribute
#
