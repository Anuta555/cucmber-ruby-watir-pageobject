require 'watir-webdriver'

Before do
  # set browser
  case Settings.settings['browser']
    when 'chrome'
      @browser = Watir::Browser.new :chrome
    when 'firefox'
      @browser = Watir::Browser.new :firefox
    when 'safari'
      @browser = Watir::Browser.new :safari
  end
  @browser.goto Settings.settings['ui_url']
end

After do
  @browser.close if @browser
end