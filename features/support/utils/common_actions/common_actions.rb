require 'selenium-webdriver'
require_relative '../../../support/utils/appium/appium_manager'

class CommonActions
  def self.click_element(element)
    $wait.until {
      element.click
    }
  end

  def self.send_keys(element, value)
    $wait.until {
      element.clear
      element.send_keys value
    }
  end
end
