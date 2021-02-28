require 'selenium-webdriver'
require 'cucumber'
require 'watir'

# require 'pry' # TODO this gem is causing issues
#------------------------------------------------------------------------------#
# Run all tests for Watirworks Framework
#
#  cucumber -s -t @step_tests
#
#------------------------------------------------------------------------------#
BASE_URL = 'https://www.sharecare.com'

Watir.default_timeout = 10

#------------------------------------------------------------------------------#
case ENV['BROWSER']
  when 'ff', 'firefox'
    # cucumber BROWSER=firefox -s -t @step_tests
    browser = Watir::Browser.new :firefox
    browser.window.resize_to(1100,650)
  when 'chrome'
    # cucumber BROWSER=chrome -s -t @step_tests
    browser = Watir::Browser.new :chrome
    browser.window.resize_to(1100,650)
  when 'headless'
    # cucumber BROWSER=headless -s -t @step_tests
    browser = Watir::Browser.new :chrome, headless: true
  when 'safari'
    # cucumber BROWSER=safari -s -t @step_tests
    browser = Watir::Browser.new :safari
    browser.window.resize_to(1100,650)
# USER AGENTS
  when 'iphone'
    driver = Webdriver::UserAgent.driver(:browser => :chrome, :agent => :iphone, :orientation => :portrait, :switches => %w[--load-extension=/Users/cmitchell/Library/Application\ Support/Google/Chrome/Profile\ 3/Extensions/olkcipmnccchnnikelenphfdeigajlcl/1.42_0])
    browser = Watir::Browser.new driver
    browser.window.resize_to(320,620) #568
  when 'ipad'
    driver = Webdriver::UserAgent.driver(:browser => :chrome, :agent => :ipad, :orientation => :landscape)
    browser = Watir::Browser.new driver
    browser.window.resize_to(1024,820) #768
  when 'android_phone'
    driver = Webdriver::UserAgent.driver(:browser => :chrome, :agent => :android_phone, :orientation => :portrait)
    browser = Watir::Browser.new driver
    browser.window.resize_to(350,620) #568
  when 'android_tablet'
    driver = Webdriver::UserAgent.driver(:browser => :chrome, :agent => :android_tablet, :orientation => :landscape)
    browser = Watir::Browser.new driver
    browser.window.resize_to(960,440)
  when 'ff_proxy' # cucumber BROWSER=ff_proxy -s -t @step_tests
    profile = Selenium::WebDriver::Firefox::Profile.new
    profile.proxy = Selenium::WebDriver::Proxy.new :http => 'my.proxy.com', :ssl => 'my.proxy.com'
    browser = Watir::Browser.new :firefox, :profile => profile
  else  # cucumber -s -t @step_tests
    browser = Watir::Browser.new :chrome
    browser.window.resize_to(1100,950)
end

case ENV['SPEED']
  when 'slow' # cucumber SPEED=slow -s -t @step_tests
    AfterStep do |scenario|
      sleep 1
    end
  when 'fast' # cucumber SPEED=fast -s -t @step_tests
    else
  end

#------------------------------------------------------------------------------#
  Before do
      @browser = browser
      @browser.execute_script "window.alert = function() { return true; }"
  end
#------------------------------------------------------------------------------#
  # After do |scenario|
  #   time = Time.now.ctime
  #   my_shot = @browser.screenshot.save "features/screenshots/#{time}.png"
  #   my_shot.to_s
  #   embed "#{my_shot}", 'image/png'
  # end
#------------------------------------------------------------------------------#
#------------------------------------------------------------------------------#

#------------------------------------------------------------------------------#
# If you put the outline tag on every 'Scenario Outline'
# then the two hooks below will put a line change
Before('@outline') do
  puts "\n          "
end
#------------------------------------------------------------------------------#
AfterStep('@outline') do
  puts "\n          "
end
#------------------------------------------------------------------------------#
# If the feature being tested breaks you can add this tag
# above the scenario or feature and when you run all the tests
# cucumber will skip this scenario/feature.
Before('@BUG') do
 pending
end
#------------------------------------------------------------------------------#
# You can pass the parameter KEEPOPEN=true to keep the browser open after test is executed
case ENV['KEEPOPEN']
  when 'true' # cucumber KEEPOPEN=true -s -t @step_tests
    at_exit do
      sleep 222
    end
  else
    at_exit do
    browser.close
end
end

# The is an often used line
def element(selector)
  @element = @browser.element(css: selector)
end

def link(selector)
  @link_selector = @browser.link(css: selector)
end

def link_text(value)
  @link_text_selector = @browser.link(text: value)
end

def text_field(selector)
  @text_field_selector = @browser.text_field(css: selector)
end

#------------------------------------------------------------------------------#
# Run all tests for Watirworks Framework
#
#  cucumber -s -t @step_tests

#  cucumber BROWSER=firefox -s -t @step_tests
#  cucumber BROWSER=firefox -s -t @link_step_3
#  cucumber KEEPOPEN=true -s -t @

# with slowhandcuke
# cucumber -f 'Slowhandcuke::Formatter' -s -t @browser
