=begin form_step_1
When I submit the form "attribute=value"
=end
When /^I submit the form "(\w{2,9})=(.*)"$/ do
|attribute, value|
  selector = @browser.form(:"#{attribute}" => value)
  selector.wait_until_present
  if selector.exists?
    selector.submit
  else
    fail("FAIL!!!! I couldn't submit the form")
  end
end
