=begin can't keep focus
As of right now I don't know of a way for Watir to keep focus on an iframe
so all action inside an iframe will need their own rule
I am quite certain there's a better way to do this but for now this is what i'm doing.
TODO: fix this so one line grabs focus so i don't need all these rules below
=end

=begin iframe_step_1
When in iframe "fr_attribute=fr_value", I put "some_text" in the text field "attribute=value"
=end
When /^in iframe "(\w{2,9})=(.*)", I put "(.*)" in the text field "(\w{2,9})=(.*)"$/ do
|fr_attribute, fr_value, some_text, attribute, value|
  fr_selector = @browser.iframe(:"#{fr_attribute}" => fr_value)
  in_selector = fr_selector.text_field(:"#{attribute}" => value)
  in_selector.wait_until_present
  if in_selector.exists?
    in_selector.set some_text
  else
    fail("FAIL!!! I couldn't put '#{some_text}' in '#{attribute}=#{value}' of the iframe '#{fr_attribute}''#{fr_value}'")
  end
end

=begin iframe_step_2
When in iframe "fr_attribute=fr_value", I click on the link "attribute=value"
=end
When /^in iframe "(\w{2,9})=(.*)", I click the link "(\w{2,9})=(.*)"$/ do
|fr_attribute, fr_value, attribute, value|
  fr_selector = @browser.iframe(:"#{fr_attribute}" => fr_value)
  in_selector = fr_selector.link(:"#{attribute}" => value)
  in_selector.wait_until_present
  if in_selector.exists?
    in_selector.click
  else
    fail("FAIL!!! I couldn't click the link '#{attribute}=#{value}' of the iframe '#{fr_attribute}''#{fr_value}'")
  end
end

=begin iframe_step_3
When in iframe "fr_attribute=fr_value", I click on the input "attribute=value"
=end
When /^in iframe "(\w{2,9})=(.*)", I click on the input "(\w{2,9})=(.*)"$/ do
|fr_attribute, fr_value, attribute, value|
  fr_selector = @browser.iframe(:"#{fr_attribute}" => fr_value)
  in_selector = fr_selector.input(:"#{attribute}" => value)
  in_selector.wait_until_present
  if in_selector.exists?
    in_selector.click
  else
    fail("FAIL!!! I couldn't click on '#{attribute}=#{value}' in the iframe '#{fr_attribute}''#{fr_value}'")
  end
end

=begin iframe_step_4
When in iframe "fr_attribute=fr_value", I click the "attribute=value" element
=end
When /^in iframe "(\w{2,9})=(.*)", I click the "(\w{2,9})=(.*)" element$/ do
|fr_attribute, fr_value, attribute, value|
  fr_selector = @browser.iframe(:"#{fr_attribute}" => fr_value)
  in_selector = fr_selector.element(:"#{attribute}" => value)
  in_selector.wait_until_present
  if in_selector.exists?
    in_selector.click
  else
    fail("FAIL!!! I couldn't click on '#{attribute}=#{value}' element in the frame '#{fr_attribute}''#{fr_value}'")
  end
end

=begin iframe_step_5
Then in iframe "fr_attribute=fr_value", the "attribute=value" element should be present
=end
Then /^in iframe "(\w{2,9})=(.*)", the "(\w{2,9})=(.*)" element should be present$/ do
|fr_attribute, fr_value, attribute, value|
  fr_selector = @browser.iframe(:"#{fr_attribute}" => fr_value)
  in_selector = fr_selector.element(:"#{attribute}" => value)
  in_selector.wait_until_present
  if in_selector.exists?
    puts("TRUE!!! the '#{attribute}=#{value}' element in the '#{fr_attribute}''#{fr_value}' iframe IS present")
  else
    fail("FAIL!!! the '#{attribute}=#{value}' element in the '#{fr_attribute}''#{fr_value}' iframe is NOT present")
  end
end

=begin iframe_step_6
Then in iframe "fr_attribute=fr_value", the "attribute=value" element should not be present
=end
Then /^in iframe "(\w{2,9})=(.*)", the "(\w{2,9})=(.*)" element should not be present$/ do
|fr_attribute, fr_value, attribute, value|
  fr_selector = @browser.iframe(:"#{fr_attribute}" => fr_value)
  in_selector = fr_selector.element(:"#{attribute}" => value)
  if !(in_selector.exists?)
    puts("TRUE!!! the '#{attribute}=#{value}' element is NOT present in iframe '#{fr_attribute}''#{fr_value}'")
  else
    fail("FAIL!!!! the '#{attribute}=#{value}' element IS present in the iframe '#{fr_attribute}''#{fr_value}'")
  end
end


=begin iframe_step_7
Then in iframe "fr_attribute=fr_value", the text "some_text" should be present
=end
# I'm not sure this rule is even needed.
# I believe the non-iframe text present rule will scour inside the iframe.
Then /^in iframe "(\w{2,9})=(.*)", the text "(.*)" should be present$/ do
|fr_attribute, fr_value, some_text|
  fr_selector = @browser.iframe(:"#{fr_attribute}" => fr_value)
  fr_selector.wait_until_present
  fr_selector_text = fr_selector.element.text
    if fr_selector_text.include? "#{some_text}"
      puts("TRUE!!! '#{some_text}' is present")
    else
      fail("FAIL!!! '#{fr_selector_text}' was returned")
    end
end


#_no_test_step_# When in iframe "(\w{2,9})=(.*)", I submit the form "(\w{2,9})=(.*)"
# When /^in iframe "(\w{2,9})=(.*)", I submit the form "(\w{2,9})=(.*)"$/ do
# |fr_attribute, fr_value, attribute, value|
#   fr_selector = @browser.iframe(:"#{fr_attribute}" => fr_value)
#   in_selector = fr_selector.form(:"#{attribute}" => value)
#   in_selector.wait_until_present
#   eval = in_selector.exists?
#   if eval == true
#     in_selector.submit
#   else
#     fail("FAIL!!!! I couldn't submit the form '#{attribute}=#{value}' in the '#{fr_attribute}''#{fr_value}' element")
#   end
# end

#_no_test_step_# Then in iframe "(\w{2,9})=(.*)", the "(\w{2,9})=(.*)" element should have a style property of "(.*):(.*)"
# Then /^in iframe "(\w{2,9})=(.*)", the "(\w{2,9})=(.*)" element should have a style property of "(.*):(.*)"$/ do
# |fr_attribute, fr_value, attribute, value, style_prop, style_value|
#   fr_selector = @browser.iframe(:"#{fr_attribute}" => fr_value)
#   in_selector = fr_selector.element(:"#{attribute}" => value)
#   in_selector.wait_until_present
#   my_style = in_selector.style style_prop
#   eval = my_style.include? style_value
#   if eval == true
#     puts "%s !!! '%s' returned '%s'" % [eval, style_prop, style_value]
#   else
#     fail("FAIL!!!! '#{style_prop}:#{style_value}' was returned")
#   end
# end
