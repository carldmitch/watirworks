=begin image_step_1
Then the image "attribute=value" should be visible
=end
Then /^the image "(.*)" should be visible$/ do |selector|
  img = @browser.image(css: selector)
  if img.loaded?
    log("TRUE!!! the '#{selector}' image IS visible")
  else
    fail("FAIL!!! the '#{selector}' image is NOT visible")
  end
end


=begin execute_script_step_4
Then the image "attribute=value" should not be visible
=end
Then /^the image "(.*)" should not be visible$/ do |selector|
  img = @browser.image(css: selector)
  if !(img.loaded?)
    log("TRUE!!! the '#{selector}' image is NOT visible")
  else
    fail("FAIL!!! the '#{selector}' image is visible")
  end
end


=begin
Then the image "attribute=value" should contain the alt text "alt_text"
=end
Then /^the image "(.*)" should contain the alt text "(.*)"$/ do |selector, alt_text|
  img = @browser.image(css: selector)
  img.loaded?
  result = img.alt
  if result.include? alt_text
    log("TRUE!!! '#{selector}' returned the alt text '#{result}'")
  else
    fail("FAIL!!! '#{selector}' returned the alt text '#{result}'")
  end
end


=begin
Then the image "attribute=value" should contain the src "src_url"
=end
Then /^the image "(.*)" should contain the src "(.*)"$/ do |selector, src_url|
  img = @browser.image(css: selector)
  img.loaded?
  result = img.src
  if result.include? src_url
    log("TRUE!!! '#{selector}' returned the src '#{result}'")
  else
    fail("FAIL!!! '#{selector}' returned the src '#{result}'")
  end
end


=begin
Then the image "attribute=value" should have the height of "img_height"
=end
Then /^the image "(.*)" should have the height of "(.*)"$/ do |selector, img_height|
  img = @browser.image(css: selector)
  img.loaded?
  result = img.height.to_s
  if result == img_height
    log("TRUE!!! '#{selector}' returned the height '#{result}'")
  else
    fail("FAIL!!! '#{selector}' returned the height '#{result}'")
  end
end


=begin
Then the image "selector" should have the width of "img_width"
=end
Then /^the image "(.*)" should have the width of "(.*)"$/ do |selector, img_width|
  img = @browser.image(css: selector)
  img.loaded?
  result = img.width.to_s
  if result == img_width
    log("TRUE!!! '#{selector}' returned the width '#{result}'")
  else
    fail("FAIL!!! '#{selector}' returned the width '#{result}'")
  end
end

