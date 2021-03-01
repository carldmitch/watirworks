=begin link_step_1
When I click on the link "value"
=end
When /^I click on the link "(.*)"$/ do |selector|
  element = @browser.link(css: selector)  
  if element.present?
    element.click
  else
    fail("FAIL!!!! I couldn't click the link '#{selector}'")
  end
end

=begin link_step_2
When I click on the link with the text "text"
=end
When /^I click on the link with the text "(.*)"$/ do |text| 
  element = @browser.link(text: text)
  if element.present?
    element.click
  else
    fail("FAIL!!!! I couldn't click the link with the text'#{text}'")
  end
end

=begin link_step_3
When I open in a new tab the link "selector"
=end
When /^I open in a new tab the link "(.*)"$/ do |selector|
  element = @browser.link(css: selector)
  if element.present?
    element.click(:command, :shift)
    @browser.switch_window
  else
    fail("FAIL!!!! I couldn't open in a new tab the link '#{selector}'")
  end
end

=begin link_step_4
When I open in a new tab the link "attribute=value" and focus it
=end
When /^I open in a new tab the link "(.*)" and focus it$/  do |selector|
  element = @browser.link(css: selector)
  if element.present?
    element.click(:command, :shift)
    @browser.switch_window
    sleep 1
  else
    fail("FAIL!!!! I couldn't open in a new tab the link '#{selector}'")
  end
end