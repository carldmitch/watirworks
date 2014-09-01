=begin element_step_1
When I click on the "attribute=value" element
=end
When /^I click on the "(\w{2,9})=(.*)" element$/ do
|attribute, value|
  selector = @browser.element(:"#{attribute}" => value)
  selector.wait_until_present
  eval = selector.exists?
  if eval == true
    selector.click
    else
      fail("FAIL!!! I couldn't click the '#{attribute}=#{value}' element")
  end
end

=begin element_step_2
When I mouse over the "attribute=value" element
=end
When /^I mouse over the "(\w{2,9})=(.*)" element$/ do
|attribute, value|
  selector = @browser.element(:"#{attribute}" => value)
  selector.wait_until_present
  eval = selector.exists?
  if eval == true
    selector.hover
    else
      fail("FAIL!!! I couldn't mouse over the '#{attribute}=#{value}' element")
  end
end

=begin element_step_3
When I wait for the "attribute=value" element to be present
=end
When /^I wait for the "(\w{2,9})=(.*)" element to be present$/ do
|attribute, value|
  start_time = Time.now
  selector = @browser.element(:"#{attribute}" => value)
  selector.wait_until_present
  end_time = Time.now
  elapsed_seconds = (end_time - start_time).round(2)
  if eval = selector.exists?
    puts("TRUE!!! Done waiting for the '#{attribute}=#{value}' element after only #{elapsed_seconds} seconds")
  else
    fail("FAIL!!! I couldn't wait for the '#{attribute}=#{value}' element")
  end
end

=begin element_step_4
Then the "attribute=value" element should contain the text "some_text"
=end
Then /^the "(\w{2,9})=(.*)" element should contain the text "(.*)"$/ do
|attribute, value, some_text|
  selector = @browser.element(:"#{attribute}" => value)
  selector.wait_until_present
  result = selector.text
  if result.include? some_text
    puts("TRUE!!! '#{attribute}=#{value}' returned '#{result}'")
  else
    fail("FAIL!!! '#{attribute}=#{value}' returned '#{result}'")
  end
end

=begin element_step_5
Then the "attribute=value" element should not contain the text "some_text"
=end
Then /^the "(\w{2,9})=(.*)" element should not contain the text "(.*)"$/ do
|attribute, value, some_text|
  selector = @browser.element(:"#{attribute}" => value)
  result = selector.text
  if !(result.include? some_text)
    puts("TRUE!!! '#{attribute}=#{value}' returned '#{result}'")
  else
    fail("FAIL!!! '#{attribute}=#{value}' returned '#{result}'")
  end
end

=begin element_step_6
Then the "attribute=value" element should have the exact value of "exact"
=end
Then /^the "(\w{2,9})=(.*)" element should have the exact value of "(.*)"$/ do
|attribute, value, exact|
  selector = @browser.element(:"#{attribute}" => value)
  result = selector.value
  if exact == result
    puts("TRUE!!! '#{attribute}=#{value}' returned '#{result}'")
  else
    fail("FAIL!!! '#{attribute}=#{value}' returned '#{result}'")
  end
end

=begin element_step_7
Then the "attribute=value" element should be present
=end
Then /^the "(\w{2,9})=(.*)" element should be present$/ do
|attribute, value|
  selector = @browser.element(:"#{attribute}" => value)
  selector.wait_until_present
  if selector.exists?
    puts("TRUE!!! the '#{attribute}=#{value}' element IS present")
  else
    fail("FAIL!!! the '#{attribute}=#{value}' element is NOT present")
  end
end

=begin element_step_8
Then the "attribute=value" element should not be present
=end
Then /^the "(\w{2,9})=(.*)" element should not be present$/ do
|attribute, value|
  selector = @browser.element(:"#{attribute}" => value)
  if !(selector.exists?)
    puts("TRUE!!! the '#{attribute}=#{value}' element is NOT present")
  else
    fail("FAIL!!! the '#{attribute}=#{value}' element IS present")
  end
end

=begin element_step_9
Then the "attribute=value" element should be visible
=end
Then /^the "(\w{2,9})=(.*)" element should be visible$/ do
|attribute, value|
  selector = @browser.element(:"#{attribute}" => value)
  selector.wait_until_present
  if selector.visible?
    puts("TRUE!!! the '#{attribute}=#{value}' element IS visible")
  else
    fail("FAIL!!! the '#{attribute}=#{value}' element is NOT visible")
  end
end

=begin element_step_10
Then the "attribute=value" element should not be visible
=end
Then /^the "(\w{2,9})=(.*)" element should not be visible$/ do
|attribute, value|
  selector = @browser.element(:"#{attribute}" => value)
  if !(selector.visible?)
    puts("TRUE!!! the '#{attribute}=#{value}' element is NOT visible")
  else
    fail("FAIL!!! the '#{attribute}=#{value}' element IS visible")
  end
end

=begin element_step_11
Then the "attribute=value" element should have a style property of "style_prop:style_value"
=end
# Keep in mind that different browsers return different results
# FAFAFD in one could be rgba(250, 250, 250, 1) in another
Then /^the "(\w{2,9})=(.*)" element should have a style property of "(.*):(.*)"$/ do
|attribute, value, style_prop, style_value |
  selector = @browser.element(:"#{attribute}" => value)
  selector.wait_until_present
  my_style = selector.style style_prop
  if my_style.include? style_value
    puts("TRUE!!! the '#{attribute}=#{value}' element returned the style '#{style_prop}:#{my_style}'")
  else
    fail("FAIL!!! the '#{attribute}=#{value}' element returned the style '#{style_prop}:#{my_style}'")
  end
end

=begin element_step_12
Then the "attribute=value" element should not have a style property of "style_prop:style_value"
=end
# Keep in mind that different browsers return different results
# FAFAFD in one could be rgba(250, 250, 250, 1) in another
Then /^the "(\w{2,9})=(.*)" element should not have a style property of "(.*):(.*)"$/ do
|attribute, value, style_prop, style_value |
  selector = @browser.element(:"#{attribute}" => value)
  selector.wait_until_present
  my_style = selector.style style_prop
  if !(my_style.include? style_value)
    puts("TRUE!!! the '#{attribute}=#{value}' element returned the style '#{style_prop}:#{my_style}'")
  else
    fail("FAIL!!! the '#{attribute}=#{value}' element returned the style '#{style_prop}:#{my_style}'")
  end
end

=begin element_step_13
Then there should be exactly "number_of" of the "attribute=value" element
=end
Then /^there should be exactly "(\d+)" of the "(\w{2,9})=(.*)" element$/ do
|number_of, attribute, value|
  selector = @browser.elements(:"#{attribute}" => value)
  selector_size = selector.size
  if selector_size.to_s == number_of
    puts("TRUE!!! '#{attribute}=#{value}' returned '#{selector_size}'")
  else
    fail("FAIL!!! '#{attribute}=#{value}' returned '#{selector_size}'")
  end
end

=begin element_step_14
Then there should be less than "number_of" of the "attribute=value" element
=end
Then /^there should be less than "(\d+)" of the "(\w{2,9})=(.*)" element$/ do
|number_of, attribute, value|
  selector = @browser.elements(:"#{attribute}" => value)
  selector_size = selector.size
  if selector_size.to_s < number_of
    puts("TRUE!!! '#{attribute}=#{value}' returned '#{selector_size}'")
  else
    fail("FAIL!!! the '#{attribute}=#{value}' returned #{selector_size}")
  end
end

=begin element_step_15
Then there should be more than "number_of" of the "attribute=value" element
=end
Then /^there should be more than "(\d+)" of the "(\w{2,9})=(.*)" element$/ do
|number_of, attribute, value|
  selector = @browser.elements(:"#{attribute}" => value)
  selector_size = selector.size
  if selector_size.to_s > number_of
    puts("TRUE!!! '#{attribute}=#{value}' returned '#{selector_size}'")
  else
    fail("FAIL!!! the '#{attribute}=#{value}' returned #{selector_size}")
  end
end

=begin element_step_16
Then there should be at least "number_of" of the "attribute=value" element
=end
Then /^there should be at least "(\d+)" of the "(\w{2,9})=(.*)" element$/ do
|number_of, attribute, value|
  selector = @browser.elements(:"#{attribute}" => value)
  selector_size = selector.size
  if selector_size.to_s >= number_of
    puts("TRUE!!! '#{attribute}=#{value}' returned '#{selector_size}'")
  else
    fail("FAIL!!! the '#{attribute}=#{value}' returned #{selector_size}")
  end
end

=begin element_step_17
Then there should be at most "number_of" of the "attribute=value" element
=end
Then /^there should be at most "(\d+)" of the "(\w{2,9})=(.*)" element$/ do
|number_of, attribute, value|
  selector = @browser.elements(:"#{attribute}" => value)
  selector_size = selector.size
  if selector_size.to_s <= number_of
    puts("TRUE!!! '#{attribute}=#{value}' returned '#{selector_size}'")
  else
    fail("FAIL!!! the '#{attribute}=#{value}' returned #{selector_size}")
  end
end

=begin element_step_18
When I click on the "attribute=value" element until it is no longer present
=end
When /^I click on the "(\w{2,9})=(.*)" element until it is no longer present$/ do
|attribute, value|
  selector = @browser.element(:"#{attribute}" => value)
  while (selector.visible?) do
      selector.click
#for some reason this loop fails without a slight pause in it
      sleep(1.0/24.0)
  end
  puts("TRUE!!! '#{attribute}=#{value}' is no longer present")
end

=begin element_step_19
Then the meta "attribute=value" element should be present
=end
Then /^the meta "(\w{2,9})=(.*)" element should be present$/ do
|attribute, value|
  case
when attribute == "name"
  selector = @browser.meta(:"#{attribute}", value).name
when attribute == "content"
  selector = @browser.meta(:"#{attribute}", value).content
when attribute == "http_equiv"
  selector = @browser.meta(:"#{attribute}", value).http_equiv
when attribute == "scheme"
  selector = @browser.meta(:"#{attribute}", value).scheme
end
  if selector == value
    puts("TRUE!!! the '#{attribute}=#{selector}' is present")
  else
    fail("FAIL!!! the '#{attribute}=#{selector}' is not present")
  end
end

=begin element_step_20
Then the meta "attribute=value" content contains "meta_content"
=end
Then /^the meta "(\w{2,9})=(.*)" content contains "(.*)"$/ do
|attribute, value, meta_content|
 selector = @browser.meta(:"#{attribute}", value).content
  if selector.include? meta_content
    puts("TRUE!!! the '#{attribute}=#{value}' content contains '#{selector}'")
  else
    fail("FAIL!!! the '#{attribute}=#{value}' content contains '#{selector}'")
  end
end

=begin element_step_21
Then the meta property "value" content contains "meta_content"
=end
Then /^the meta property "(.*)" content contains "(.*)"$/ do
|value, meta_content|
  selector = @browser.element(:css, "meta[property*='#{value}']")
  my_meta = selector.attribute_value "content"
  if my_meta.include? meta_content
    puts("TRUE!!! the meta property '#{value}' content contains '#{my_meta}'")
  else
    fail("FAIL!!! the meta property '#{value}' content contains '#{my_meta}'")
  end
end

=begin element_step_22
When I focus on the "attribute=value" element
=end
When /^I focus on the "(\w{2,9})=(.*)" element$/ do
|attribute, value|
  selector = @browser.element(:"#{attribute}" => value)
  selector.wait_until_present
  if selector.exists?
    selector.focus
  else
    fail("FAIL!!! I couldn't click the '#{attribute}=#{value}' element")
  end
end
