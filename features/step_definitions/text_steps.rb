=begin test_steps_01
When I wait for the text "waited_text" to be present
=end
When /^I wait for the text "(.*)" to be present$/ do | waited_text |
  start_time = Time.now
  element = @browser.text.include?(waited_text)
  element.present?
  end_time = Time.now
  elapsed_seconds = (end_time - start_time).round(2)
  log("TRUE!!! and we only had to wait #{elapsed_seconds} seconds.")
end


=begin test_steps_02
Then the text "some_text" should be present
=end
Then /^the text "(.*)" should be present$/ do | some_text |
  if @browser.text.include?(some_text)
    log("True!!! '#{some_text}' IS present on the page")
  else
    fail("FAIL!!!! '#{some_text}' is NOT present on the page")
  end
end

=begin test_steps_03
Then the text "some_text" should not be present
=end
Then /^the text "(.*)" should not be present$/ do |some_text|
  sleep 1
  if !(@browser.wait_until(timeout: 5).text.include? some_text)
    log("True!!! '#{some_text}' is NOT present on the page")
  else
    fail("FAIL!!!! '#{some_text}' IS present on the page")
  end
end

=begin test_steps_04
Then the RegEx text "some_text" should be present
=end
Then /^the RegEx text "(.*)" should be present$/ do |some_text|
  if @browser.element(text: /#{some_text}/).present?
    log("True!!! '#{some_text}' IS present on the page")
  else
    fail("FAIL!!!! '#{some_text}' is NOT present on the page")
  end
end

=begin test_steps_05
Then the RegEx text "some_text" should not be present
=end
Then /^the RegEx text "(.*)" should not be present$/ do |some_text|
  sleep 1
  if @browser.wait_until(timeout: 5).element(text: /#{some_text}/).present?
    log("True!!! '#{some_text}' is NOT present on the page")
  else
    fail("FAIL!!!! '#{some_text}' IS present on the page")
  end
end

=begin test_steps_06
Then the text "some_text" should be present regardless of case
=end
Then /^the text "(.*)" should be present regardless of case$/ do |some_text|
  down_text = some_text.downcase
  if @browser.text.downcase.include? down_text
    log("True!!! '#{down_text}' IS present on the page")
  else
    fail("FAIL!!!! '#{down_text}' is NOT present on the page")
  end
end

=begin test_steps_07
Then the text "some_text" should not be present regardless of case
=end
Then /^the text "(.*)" should not be present regardless of case$/ do |some_text|
  down_text = some_text.downcase
  if !@browser.wait_until(timeout: 5).text.downcase.include? "#{down_text}"
    log("True!!! '#{down_text}' is NOT present on the page")
  else
    fail("FAIL!!!! '#{down_text}' IS present on the page")
  end
end
