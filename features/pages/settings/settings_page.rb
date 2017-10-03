require 'selenium-webdriver'
require_relative '../../support/utils/appium/appium_manager'
require_relative '../../support/utils/common_actions/common_actions'
require_relative '../../support/utils/locators/settings_page_locators'

class SettingsPage < Appium_manager
  def self.personal_info_button
    $driver.find_element(:name => SettingsPageLocators.personal_info_button)
  end

  def self.full_name_label
    $wait.until { $driver.find_element(:xpath => SettingsPageLocators.full_name_label).text }
  end

  def self.click_personal_info
    CommonActions.click_element personal_info_button
  end
end
