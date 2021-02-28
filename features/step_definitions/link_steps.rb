=begin link_step_1
When I click on the link "value"
=end
When /^I click on the link "(.*)"$/ do |value| link(value)
  @link_selector.click
end

=begin link_step_2
When I click on the link text "txt_link"
=end
When /^I click on the link text "(.*)"$/ do |value| link_text(value)
  @link_text_selector.click
end

=begin link_step_3
When I open in a new tab the link "attribute=value"
=end
When(/^I open in a new tab the link "(\w{2,9})=(.*)"$/) do
|attribute, value|
  selector = @browser.link(:"#{attribute}" => value)
  selector.wait_until(&:present?)
  eval = selector.exists?
  if eval == true
    selector.click(:command, :shift)
    @browser.windows.last.use
  else
    fail("FAIL!!!! I couldn't click the link '#{attribute}=#{value}'")
  end
end

=begin link_step_4
When I open in a new tab the link "attribute=value" and focus it
=end
When(/^I open in a new tab the link "(\w{2,9})=(.*)" and focus it$/) do
|attribute, value|
  selector = @browser.link(:"#{attribute}" => value)
  selector.wait_until(&:present?)
  eval = selector.exists?
  if eval == true
    selector.click(:command, :shift)
    @browser.windows.last.use
    sleep 1
  else
    fail("FAIL!!!! I couldn't click the link '#{attribute}=#{value}'")
  end
 end
