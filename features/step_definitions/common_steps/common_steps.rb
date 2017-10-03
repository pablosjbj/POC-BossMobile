require_relative '../../support/utils/appium/appium_manager'
require_relative '../../pages/base/base_page'
require_relative '../../pages/base/boss_money_page'

Given(/^I go to Boss Revolution Money app$/) do
  Appium_manager.new
end

And(/^I verify if exist a update available$/) do
  BasePage.click_ignore_button
end

When(/^I press Login\/Register button$/) do
  $driver.quit
end

When(/^I press on Settings button$/) do
  BossMoneyPage.click_settings_button
end
