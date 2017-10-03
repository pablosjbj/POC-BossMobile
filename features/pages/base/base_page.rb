require 'selenium-webdriver'
require_relative '../../support/utils/appium/appium_manager'
require_relative '../../support/utils/common_actions/common_actions'
require_relative '../../support/utils/locators/base_page_locators'

class BasePage < Appium_manager
  def self.ignore_button
    $wait.until { $driver.find_element(:name => BasePageLocators.ignore_button) }
  end

  def self.updates_display
    $wait.until { $driver.find_element(:name => BasePageLocators.update_display) }
  end

  def self.click_ignore_button
    if updates_display.displayed?
      CommonActions.click_element ignore_button
    elsif
      put 'Uploaded not available'
    end
  end
end
