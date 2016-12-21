require 'selenium/webdriver'

url = "http://#{ENV['BS_USERNAME']}:#{ENV['BS_ACCESS_KEY']}@hub-cloud.browserstack.com/wd/hub"

capabilities = Selenium::WebDriver::Remote::Capabilities.new

capabilities['project'] = ENV['BS_AUTOMATE_PROJECT'] if ENV['BS_AUTOMATE_PROJECT']
capabilities['build'] = ENV['BS_AUTOMATE_BUILD'] if ENV['BS_AUTOMATE_BUILD']

capabilities['os'] = ENV['BS_AUTOMATE_OS']
capabilities['os_version'] = ENV['BS_AUTOMATE_OS_VERSION']
capabilities['browser'] = ENV['SELENIUM_BROWSER']
capabilities['browser_version'] = ENV['SELENIUM_VERSION']
capabilities['browserstack.debug'] = 'true'

capabilities['browserstack.local'] = 'true' if ENV['BS_LOCAL']

before_spec do
	@driver = Selenium::WebDriver.for :remote, url: url, desired_capabilities: capabilities
end

after_spec do
	@driver.quit
end