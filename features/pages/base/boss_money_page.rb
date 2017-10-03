require 'selenium-webdriver'
require_relative '../../support/utils/appium/appium_manager'
require_relative '../../support/utils/common_actions/common_actions'
require_relative '../../support/utils/locators/boss_money_page_locators'

class BossMoneyPage < Appium_manager
  def self.settings_button
    $driver.find_element(name: BossMoneyPageLocators.settings_button)
  end

  def self.click_settings_button
    CommonActions.click_element settings_button
  end
end
