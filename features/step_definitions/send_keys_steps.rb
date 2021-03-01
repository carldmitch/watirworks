#_step_#1 When I press the "(.*)" key "(.*)" times?
When /^I press the "(.*)" key "(.*)" times?$/ do | key_press, number_of |
  (number_of.to_i).times do
    @browser.send_keys :"#{key_press}"
  end
end

#_step_#2 When I press the "(.*)" key on the "(\w{2,9})=(.*)" element
When /^I press the "(.*)" key on the "(.*)" element$/ do |key_press, selector|
  element = @browser.element(css: selector)
  if element.present?
    element.send_keys :"#{key_press}"
  else
    fail("FAIL!!!! I couldn't press '#{key_press}' the '#{selector}' element")
  end
end

#_step_#3 When I right click on the "(\w{2,9})=(.*)" element
When /^I right click on the "(.*)" element$/ do |selector|
  element = @browser.element(css: selector)
  if element.present?
    element.right_click
  else
    fail("FAIL!!!! I couldn't right click the '#{selector}' element")
  end
end


=begin # Below is the list of keys you can send
  # :null
  # :cancel
  # :help
  # :backspace
  # :tab
  # :clear
  # :return
  # :enter
  # :shift
  # :left_shift
  # :control
  # :left_control
  # :alt
  # :left_alt
  # :pause
  # :escape
  # :space
  # :page_up
  # :page_down
  # :end
  # :home
  # :left
  # :arrow_left
  # :up
  # :arrow_up
  # :right
  # :arrow_right
  # :down
  # :arrow_down
  # :insert
  # :delete
  # :semicolon
  # :equals
  # :numpad0
  # :numpad1
  # :numpad2
  # :numpad3
  # :numpad4
  # :numpad5
  # :numpad6
  # :numpad7
  # :numpad8
  # :numpad9
  # :multiply
  # :add
  # :separator
  # :subtract
  # :decimal
  # :divide
  # :f1
  # :f2
  # :f3
  # :f4
  # :f5
  # :f6
  # :f7
  # :f8
  # :f9
  # :f10
  # :f11
  # :f12
  # :meta
  # :command
=end
