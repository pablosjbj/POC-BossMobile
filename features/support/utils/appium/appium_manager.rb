require 'rubygems'
require 'selenium-webdriver'
require_relative '../../env'
require_relative 'device_configuration/appium_factory'

class Appium_manager
  def initialize
    init_appium_driver
  end

  def init_appium_driver
    capabilities = Appium_factory.get_configuration(Environment.platform)
    $driver = Selenium::WebDriver.for(:remote, :desired_capabilities => capabilities, :url => server_url)
    $wait = Selenium::WebDriver::Wait.new :timeout => 20
  end

  def server_url
    Environment.appium_server_url
  end
end
