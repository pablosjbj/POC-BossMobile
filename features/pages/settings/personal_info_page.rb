require 'selenium-webdriver'
require_relative '../../support/utils/appium/appium_manager'
require_relative '../../support/utils/common_actions/common_actions'
require_relative '../../support/utils/locators/personal_info_page_locators'

class PersonalInfoPage < Appium_manager
  def self.text_first_name
    $driver.find_element(:xpath => PersonalInfoPageLocators.first_name_text)
  end

  def self.text_last_name
    $driver.find_element(:xpath => PersonalInfoPageLocators.last_name_text)
  end

  def self.label_first_name
    $driver.find_element(:xpath => PersonalInfoPageLocators.first_name_text).text
  end

  def self.label_last_name
    $driver.find_element(:xpath => PersonalInfoPageLocators.last_name_text).text
  end

  def self.cancel
    $driver.find_element(:xpath => PersonalInfoPageLocators.cancel)
  end

  def self.button_save
    $driver.find_element(:name => PersonalInfoPageLocators.save_button)
  end

  def self.set_fist_name(first_name)
    CommonActions.send_keys(text_first_name, first_name)
  end

  def self.set_last_name(last_name)
    CommonActions.send_keys(text_last_name, last_name)
  end

  def self.click_save_button
    CommonActions.click_element button_save
  end

  def self.cancel_button
    CommonActions.click_element cancel
  end
end
