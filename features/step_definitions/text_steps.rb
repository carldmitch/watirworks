=begin test_steps_01
When I wait for the text "waited_text" to be present
=end
When /^I wait for the text "(.*)" to be present$/ do
| waited_text |
  start_time = Time.now
  Watir::Wait.until { @browser.text.include? "#{waited_text}" }
  end_time = Time.now
  elapsed_seconds = (end_time - start_time).round(2)
  puts "TRUE!!! and we only had to wait #{elapsed_seconds} seconds."
end


=begin test_steps_02
Then the text "some_text" should be present
=end
Then /^the text "(.*)" should be present$/ do
| some_text |
  eval = Watir::Wait.until(5) { @browser.text.include? "#{some_text}" }
  if eval == true
    puts("True!!! '#{some_text}' IS present on the page")
  else
    fail("FAIL!!!! '#{some_text}' is NOT present on the page")
  end
end

=begin test_steps_03
Then the text "some_text" should not be present
=end
Then /^the text "(.*)" should not be present$/ do
| some_text |
  eval = Watir::Wait.until(5) {!(@browser.text.include? "#{some_text}")}
  if eval == true
    puts("True!!! '#{some_text}' is NOT present on the page")
  else
    fail("FAIL!!!! '#{some_text}' IS present on the page")
  end
end

=begin test_steps_04
Then the RegEx text "some_text" should be present
=end
Then /^the RegEx text "(.*)" should be present$/ do
| some_text |
  eval = Watir::Wait.until(5) {@browser.element(:text, /#{some_text}/).exist?}
  if eval == true
    puts("True!!! '#{some_text}' IS present on the page")
  else
    fail("FAIL!!!! '#{some_text}' is NOT present on the page")
  end
end
