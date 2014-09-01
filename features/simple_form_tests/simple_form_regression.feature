@ionic @regression

Feature: Using Cucumber as a regression tool for QA
  In order to prevent regressions on the simple form example
    As a QA resource
      I want to run a nightly set of tests against front-end element properties

@required_fields
    Scenario: Validate required fields
      Given I am on the "/simple_form_example" page
          Then the "css=#first_name[required]" element should be present
          Then the "css=#last_name[required]" element should be present
          Then the "css=#email[required]" element should be present
          Then the "css=#email[required]" element should be present
          Then the "css=#website_url[required]" element should not be present

@placeholder
    Scenario: Validate placeholder text
      Given I am on the "/simple_form_example" page
          Then the "css=#first_name[placeholder='First Name']" element should be present
          Then the "css=#last_name[placeholder='Last Name']" element should be present
          Then the "css=#email[placeholder='name@example.com']" element should be present


#      cucumber -s -t @ionic
#      cucumber -s -t @with_req