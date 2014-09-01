=begin image_step_1
Then the image "attribute=value" should be visible
=end
Then /^the image "(\w{2,9})=(.*)" should be visible$/ do
|attribute, value|
  img = @browser.image(:"#{attribute}" => value)
  eval = img.loaded?
  if eval == true
    puts("TRUE!!! the '#{attribute}=#{value}' image IS visible")
  else
    fail("FAIL!!! the '#{attribute}=#{value}' image is NOT visible")
  end
end


=begin execute_script_step_4
Then the image "attribute=value" should not be visible
=end
Then /^the image "(\w{2,9})=(.*)" should not be visible$/ do
|attribute, value|
  img = @browser.image(:"#{attribute}" => value)
  eval = !(img.loaded?)
  if eval == true
    puts("TRUE!!! the '#{attribute}=#{value}' image is NOT visible")
  else
    fail("FAIL!!! the '#{attribute}=#{value}' image is visible")
  end
end


=begin
Then the image "attribute=value" should contain the alt text "alt_text"
=end
Then /^the image "(\w{2,9})=(.*)" should contain the alt text "(.*)"$/ do
|attribute, value, alt_text|
  img = @browser.image(:"#{attribute}" => value)
  img.wait_until_present
  img.loaded?
  result = img.alt
  if result.include? alt_text
    puts("TRUE!!! '#{attribute}=#{value}' returned the alt text '#{result}'")
  else
    fail("FAIL!!! '#{attribute}=#{value}' returned the alt text '#{result}'")
  end
end


=begin
Then the image "attribute=value" should contain the src "src_url"
=end
Then /^the image "(\w{2,9})=(.*)" should contain the src "(.*)"$/ do
|attribute, value, src_url|
  img = @browser.image(:"#{attribute}" => value)
  img.wait_until_present
  img.loaded?
  result = img.src
  if result.include? src_url
    puts("TRUE!!! '#{attribute}=#{value}' returned the src '#{result}'")
  else
    fail("FAIL!!! '#{attribute}=#{value}' returned the src '#{result}'")
  end
end


=begin
Then the image "attribute=value" should have the height of "img_height"
=end
Then /^the image "(\w{2,9})=(.*)" should have the height of "(.*)"$/ do
|attribute, value, img_height|
  img = @browser.image(:"#{attribute}" => value)
  img.wait_until_present
  img.loaded?
  result = img.height.to_s
  if result == img_height
    puts("TRUE!!! '#{attribute}=#{value}' returned the height '#{result}'")
  else
    fail("FAIL!!! '#{attribute}=#{value}' returned the height '#{result}'")
  end
end


=begin
Then the image "attribute=value" should have the width of "img_width"
=end
Then /^the image "(\w{2,9})=(.*)" should have the width of "(.*)"$/ do
|attribute, value, img_width|
  img = @browser.image(:"#{attribute}" => value)
  img.wait_until_present
  img.loaded?
  result = img.width.to_s
  if result == img_width
    puts("TRUE!!! '#{attribute}=#{value}' returned the width '#{result}'")
  else
    fail("FAIL!!! '#{attribute}=#{value}' returned the width '#{result}'")
  end
end

