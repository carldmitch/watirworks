=begin can't keep focus
As of right now I don't know of a way for Watir to keep focus on an iframe
so all action inside an iframe will need their own rule
I am quite certain there's a better way to do this but for now this is what i'm doing.
TODO: fix this so one line grabs focus so i don't need all these rules below
=end

=begin iframe_step_1
When in iframe "frame_selector", I put "some_text" in the text field "selector"
=end
When /^in iframe "(.*)", I put "(.*)" in the text field "(.*)"$/ do |frame_selector, text, selector|
  frame_element = @browser.iframe(css: frame_selector)
  element = frame_element.text_field(css: selector)
  if element.present?
    element.set text
  else
    fail("FAIL!!! I couldn't put '#{text}' in '#{selector}' of the iframe '#{frame_selector}'")
  end
end

=begin iframe_step_2
When in iframe "fr_attribute=fr_value", I click on the link "attribute=value"
=end
When /^in iframe "(.*)", I click the link "(.*)"$/ do |frame_selector, selector|
  frame_element = @browser.iframe(css: frame_selector)
  element = frame_element.link(css: selector)
  if element.present?
    element.click
  else
    fail("FAIL!!! I couldn't click the link '#{selector}' of the iframe '#{frame_selector}'")
  end
end

=begin iframe_step_3
When in iframe "fr_attribute=fr_value", I click on the input "attribute=value"
=end
When /^in iframe "(.*)", I click on the input "(.*)"$/ do |frame_selector, selector|
  frame_element = @browser.iframe(css: frame_selector)
  element = frame_element.input(css: selector)
  if element.present?
    element.click
  else
    fail("FAIL!!! I couldn't click on '#{selector}' in the iframe '#{frame_selector}'")
  end
end

=begin iframe_step_4
When in iframe "fr_attribute=fr_value", I click the "attribute=value" element
=end
When /^in iframe "(.*)", I click the "(.*)" element$/ do |frame_selector, selector|
  frame_element = @browser.iframe(css: frame_selector)
  element = frame_element.element(css: selector)
  if element.present?
    element.click
  else
    fail("FAIL!!! I couldn't click on '#{selector}' element in the frame '#{frame_selector}'")
  end
end

=begin iframe_step_5
Then in iframe "fr_attribute=fr_value", the "attribute=value" element should be present
=end
Then /^in iframe "(.*)", the "(.*)" element should be present$/ do |frame_selector, selector|
  frame_element = @browser.iframe(css: frame_selector)
  element = frame_element.element(css: selector)
  if element.present?
    log("TRUE!!! the '#{selector}' element in the '#{frame_selector}' iframe IS present")
  else
    fail("FAIL!!! the '#{selector}' element in the '#{frame_selector}' iframe is NOT present")
  end
end

=begin iframe_step_6
Then in iframe "fr_attribute=fr_value", the "attribute=value" element should not be present
=end
Then /^in iframe "(.*)", the "(.*)" element should not be present$/ do |frame_selector, selector|
  frame_element = @browser.iframe(css: frame_selector)
  element = frame_element.element(css: selector)
  if !(element.present?)
    log("TRUE!!! the '#{selector}' element is NOT present in iframe '#{frame_selector}'")
  else
    fail("FAIL!!!! the '#{selector}' element IS present in the iframe '#{frame_selector}'")
  end
end


=begin iframe_step_7
Then in iframe "fr_attribute=fr_value", the text "some_text" should be present
=end
Then /^in iframe "(.*)", the text "(.*)" should be present$/ do |frame_selector, text|
  frame_element = @browser.iframe(css: frame_selector)
  frame_element_text = frame_element.element.text
    if frame_element_text.include? "#{text}"
      log("TRUE!!! '#{text}' is present")
    else
      fail("FAIL!!! '#{frame_element_text}' was returned")
    end
end


#_no_test_step_# Then in iframe "(\w{2,9})=(.*)", the "(\w{2,9})=(.*)" element should have a style property of "(.*):(.*)"
# Then /^in iframe "(\w{2,9})=(.*)", the "(\w{2,9})=(.*)" element should have a style property of "(.*):(.*)"$/ do
# |fr_attribute, fr_value, attribute, value, style_prop, style_value|
#   fr_selector = @browser.iframe(:"#{fr_attribute}" => fr_value)
#   in_selector = fr_selector.element(:"#{attribute}" => value)
#   in_selector.wait_until(&:present?)
#   my_style = in_selector.style style_prop
#   eval = my_style.include? style_value
#   if eval == true
#     log "%s !!! '%s' returned '%s'" % [eval, style_prop, style_value]
#   else
#     fail("FAIL!!!! '#{style_prop}:#{style_value}' was returned")
#   end
# end
