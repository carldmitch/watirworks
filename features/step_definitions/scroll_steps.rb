=begin
When I scroll to the top of the page
=end
When /^I scroll to the top of the page$/ do
  @browser.scroll.to :top
end

=begin
When I scroll to the center of the page
=end
When /^I scroll to the center of the page$/ do
  @browser.scroll.to :center
end

=begin
When I scroll to the bottom of the page
=end
When /^I scroll to the bottom of the page$/ do
  @browser.scroll.to :bottom
end

=begin
When I scroll to the "attribute=value" element
=end
When /^I scroll to the "(.*)" element$/ do |selector|
  element = @browser.element(css: selector)
  @browser.execute_script("arguments[0].scrollIntoView({block: 'center'});", element)
end

=begin
When I scroll to coordinates "x" and "y" of the page
=end
# browser.scroll.to [10, 10]  # scrolls to coordinates x and y
