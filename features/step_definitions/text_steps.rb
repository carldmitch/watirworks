=begin test_steps_01
When I wait for the text "waited_text" to be present
=end
When /^I wait for the text "(.*)" to be present$/ do
| waited_text |
  load_secs = @browser.performance.summary[:response_time]/1000
  Watir::Wait.until { @browser.text.include? "#{waited_text}" }
  puts "Load Time: #{load_secs} seconds."
end


=begin test_steps_02
Then the text "some_text" should be present
=end
Then /^the text "(.*)" should be present$/ do
| some_text |
  eval = Watir::Wait.until { @browser.text.include? "#{some_text}" }
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
  eval = Watir::Wait.until {!(@browser.text.include? "#{some_text}")}
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
  eval = Watir::Wait.until {@browser.element(:text, /#{some_text}/).exist?}
  if eval == true
    puts("True!!! '#{some_text}' IS present on the page")
  else
    fail("FAIL!!!! '#{some_text}' is NOT present on the page")
  end
end
