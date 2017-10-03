require 'rspec'
require_relative '../../pages/settings/settings_page'

And(/^I press on Personal Info button$/) do
  SettingsPage.click_personal_info
end

Then(/^The personal information was changed$/) do
  expect(SettingsPage.full_name_label).to eql(@full_name)
end
