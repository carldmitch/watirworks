# cucumber -s -t @step_tests
#
#
#
#
#
# --------WORKING-ON-BELOW--------------------------------------------#

=begin
When I focus inside the iframe "(\w{2,9})=(.*)"
=end
When /^I focus inside the iframe "(\w{2,9})=(.*)"$/ do
|fr_attribute, fr_value|
  @fr_selector = @browser.iframe(:"#{fr_attribute}" => fr_value)

end





#
#
#
#
#
#
#
#
#
#
# =begin
# When I wait for all the images on the page to load
# =end
# When /^I wait for all the images on the page to load$/ do
#   eval = @browser.execute_script("return (typeof arguments[0].naturalWidth!=\"undefined\" && arguments[0].naturalWidth>0)", @browser.images(:css, 'img[class]'))
#   if eval == true
#     puts("TRUE!!! ")
#   else
#     fail("FAIL!!! ")
#   end
# end

# =begin
# When I open in a new window the link "attribute=value"
# =end
# When(/^I open in a new window the link "(\w{2,9})=(.*)"$/) do
# |attribute, value|
#   selector = @browser.link(:"#{attribute}" => value)
#   selector.wait_until(&:present?)
#   eval = selector.exists?
#   if eval == true
#     selector.click(:command, :shift)
#   else
#     fail("FAIL!!!! I couldn't click the link '#{attribute}=#{value}'")
#   end
# end
#
#
# =begin
# When I focus on the tab titled "some_thing"
# =end
# When(/^I focus on the window titled "(.*)"$/) do
# | some_thing |
#   selector = @browser.window(:title => some_thing)
#   selector.wait_until(&:present?)
#   selector.use
# end

# --------WORKING-ON-ABOVE--------------------------------------------#
#
#
# # When I input "(.*)" into the file field "(\w{2,9})=(.*)"
# When /^I input "(.*)" into the file field "(\w{2,9})=(.*)"$/ do
# | some_text, attribute, some_thing |
# # When I input "some_text" into the file field with the "attribute" of "some_thing"
#   # @browser.file_field(:id => "upload-input").set("/Users/cmitchell/Dropbox/Photos/beautywallpaper/01.jpg")
#   puts @browser.file_fields.name
# end


# =begin
#
# =end
# When /^I drag the "(\w{2,9})=(.*)" element onto the "(\w{2,9})=(.*)" element$/ do
#  |drag_attribute, drag_value, drop_attribute, drop_value|
#   drag_element = @browser.element(:"#{drag_attribute}" => drag_value)
#   drop_element = @browser.element(:"#{drop_attribute}" => drop_value)
#   drag_element.drag_and_drop_on drop_element
# end
