require 'rspec'
require_relative '../../pages/settings/settings_page'

And(/^I touch the Personal Info button$/) do
  SettingsPage.click_personal_info
end

Then(/^I should see The personal information was changed$/) do
  expect(SettingsPage.full_name_label).to eql(@full_name)
end
