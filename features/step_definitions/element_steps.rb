=begin element_step_1
When I click on the "value" element
=end
When /^I click on the "(.*)" element$/ do |selector| 
  element(selector)
  if @element.exists? then @element.click else fail end
end

=begin element_step_2
When I mouse over the "value" element
=end
When /^I mouse over the "(.*)" element$/ do |selector| 
  element(selector)
  if @element.exists? then @element.hover else fail end
end

=begin element_step_3
When I wait for the "value" element to be present
=end
When /^I wait for the "(.*)" element to be present$/ do |selector| 
  element(selector)
  start_time = Time.now
  @element.wait_until(&:present?)
  end_time = Time.now
  elapsed_seconds = (end_time - start_time).round(2)
  if (eval = @element.exists?) then log("#{elapsed_seconds} seconds") else fail end
end

=begin element_step_4
Then the "value" element should contain the text "some_text"
=end
Then /^the "(.*)" element should contain the text "(.*)"$/ do |selector,some_text| 
  element(selector)
  (@element.text.include? some_text) ? true : fail
end

=begin element_step_5
Then the "value" element should not contain the text "some_text"
=end
Then /^the "(.*)" element should not contain the text "(.*)"$/ do |selector, some_text| 
  element(selector)
  !(@element.text.include? some_text) ? true : fail
end

=begin element_step_6
Then the "value" element should have the exact value of "exact"
=end
Then /^the "(.*)" element should have the exact value of "(.*)"$/ do |selector, exact_value|
  element(selector)
  (exact_value == @element.attribute("value")) ? true : fail
end

=begin element_step_7
Then the "value" element should be present
=end
Then /^the "(.*)" element should exist$/ do |selector| 
  element(selector)
  (@element.exists?) ? true : fail
end

=begin element_step_8
Then the "value" element should not be present
=end
Then /^the "(.*)" element should not exist$/ do |selector| 
  element(selector)
  !(@element.exists?) ? true : fail
end

=begin element_step_9
Then the "value" element should be present
=end
Then /^the "(.*)" element should be present$/ do |selector| 
  element(selector)
  if @element.present? then true else fail end
end

=begin element_step_10
Then the "value" element should not be present
=end
Then /^the "(.*)" element should not be present$/ do |selector| 
  element(selector)
  if !(@element.present?) then true else fail end
end

=begin element_step_11
Then the "attribute=value" element should have a style property of "style_prop:style_value"
=end
# Keep in mind that different browsers return different results
# FAFAFD in one could be rgba(250, 250, 250, 1) in another
Then /^the "(.*)" element should have a style property of "(.*):(.*)"$/ do |selector, style_prop, style_value |
  element = @browser.element(css: selector)
  element.wait_until(&:present?)
  my_style = element.style style_prop
  if my_style.include? style_value
    log("TRUE!!! the '#{selector}' element returned the style '#{style_prop}:#{my_style}'")
  else
    fail("FAIL!!! the '#{selector}' element returned the style '#{style_prop}:#{my_style}'")
  end
end

=begin element_step_12
Then the "attribute=value" element should not have a style property of "style_prop:style_value"
=end
# Keep in mind that different browsers return different results
# FAFAFD in one could be rgba(250, 250, 250, 1) in another
Then /^the "(.*)" element should not have a style property of "(.*):(.*)"$/ do |selector, style_prop, style_value |
element = @browser.element(css: selector)
element.wait_until(&:present?)
  my_style = element.style style_prop
  if !(my_style.include? style_value)
    log("TRUE!!! the '#{selector}' element returned the style '#{style_prop}:#{my_style}'")
  else
    fail("FAIL!!! the '#{selector}' element returned the style '#{style_prop}:#{my_style}'")
  end
end

=begin element_step_13
Then there should be exactly "number_of" of the "attribute=value" element
=end
Then /^there should be exactly "(\d+)" of the "(.*)" element$/ do |number_of,selector|
  elements = @browser.elements(css: selector)
  number_of_elements = elements.size
  if (number_of_elements == number_of)
    log(number_of_elements)
  else
    fail
  end
end

=begin element_step_14
Then there should be less than "number_of" of the "attribute=value" element
=end
Then /^there should be less than "(\d+)" of the "(.*)" element$/ do |number_of, selector|
  elements = @browser.elements(css: selector)
  elements_size = elements.size
  if elements_size < number_of
    log("TRUE!!! '#{selector}' returned '#{elements_size}'")
  else
    fail("FAIL!!! the '#{selector}' returned #{elements_size}")
  end
end

=begin element_step_15
Then there should be more than "number_of" of the "attribute=value" element
=end
Then /^there should be more than "(\d+)" of the "(.*)" element$/ do |number_of, selector|
  elements = @browser.elements(css: selector)
  elements_size = elements.size
  if elements_size > number_of
    log("TRUE!!! '#{selector}' returned '#{elements_size}'")
  else
    fail("FAIL!!! the '#{selector}' returned #{elements_size}")
  end
end

=begin element_step_16
Then there should be at least "number_of" of the "attribute=value" element
=end
Then /^there should be at least "(\d+)" of the "(.*)" element$/ do |number_of, selector|
  elements = @browser.elements(css: selector)
  elements_size = elements.size
  if elements_size >= number_of
    log("TRUE!!! '#{selector}' returned '#{elements_size}'")
  else
    fail("FAIL!!! the '#{selector}' returned #{elements_size}")
  end
end

=begin element_step_17
Then there should be at most "number_of" of the "attribute=value" element
=end
Then /^there should be at most "(\d+)" of the "(.*)" element$/ do |number_of, selector|
  elements = @browser.elements(css: selector)
  elements_size = elements.size
  if elements_size <= number_of
    log("TRUE!!! '#{selector}' returned '#{elements_size}'")
  else
    fail("FAIL!!! the '#{selector}' returned #{elements_size}")
  end
end

=begin element_step_18
When I click on the "attribute=value" element until it is no longer present
=end
When /^I click on the "(.*)" element until it is no longer present$/ do |selector|
  element = @browser.element(css: selector)
  element.wait_until(&:present?)
  while (element.present?) do
    element.click
#for some reason this loop fails without a slight pause in it
      sleep(1.0/24.0)
  end
  log("TRUE!!! '#{selector}' is no longer present")
end

=begin element_step_19
Then the meta "attribute=value" element should be present
=end
Then /^the meta "(\w{2,9})=(.*)" element should be present$/ do |attribute, value|
  case
    when attribute == "name"
      selector = @browser.meta("#{attribute}": value).name
    when attribute == "content"
      selector = @browser.meta("#{attribute}": value).content
    when attribute == "http_equiv"
      selector = @browser.meta("#{attribute}": value).http_equiv
    when attribute == "scheme"
      selector = @browser.meta("#{attribute}": value).scheme
    end
  if selector == value
    log("TRUE!!! the '#{attribute}=#{selector}' is present")
  else
    fail("FAIL!!! the '#{attribute}=#{selector}' is not present")
  end
end

=begin element_step_20
Then the meta "attribute=value" content contains "meta_content"
=end
Then /^the meta "(\w{2,9})=(.*)" content contains "(.*)"$/ do |attribute, value, meta_content|
  meta_element = @browser.meta("#{attribute}": value).content
  if meta_element.include? meta_content
    log("TRUE!!! the '#{attribute}=#{value}' content contains '#{meta_element}'")
  else
    fail("FAIL!!! the '#{attribute}=#{value}' content contains '#{meta_element}'")
  end
end

=begin element_step_21
Then the meta property "value" content contains "meta_content"
=end
Then /^the meta property "(.*)" content contains "(.*)"$/ do |value, meta_content|
  meta_element = @browser.element(css: "meta[property*='#{value}']")
  my_meta = meta_element.attribute_value "content"
  if my_meta.include? meta_content
    log("TRUE!!! the meta property '#{value}' content contains '#{my_meta}'")
  else
    fail("FAIL!!! the meta property '#{value}' content contains '#{my_meta}'")
  end
end

=begin element_step_22
When I focus on the "attribute=value" element
=end
# When /^I focus on the "(.*)" element$/ do |selector|
#   element = @browser.element(css: selector)
#   element.wait_until(&:present?)
#   if element.exists?
#     @browser.scroll.to :bottom
#     element.focus
#   else
#     fail("FAIL!!! I couldn't focus on the '#{selector}' element")
#   end
# end

=begin
When I click on the element with the text "text"
=end
When /^I click on the element with the text "(.*)"$/ do |text|
  @browser.element(text: text).click
end

