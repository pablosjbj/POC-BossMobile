require_relative '../../pages/settings/personal_info_page'

And(/^I use the keyboard on personal information and type:$/) do |personal_info|
  personal_info.hashes.each {|row|
    row.each {|key, value|
      if key.eql? 'FirstName'
        PersonalInfoPage.set_fist_name value
      elsif key.eql? 'LastName'
        PersonalInfoPage.set_last_name value
      end
    }}

  @full_name = "#{PersonalInfoPage.label_first_name} #{PersonalInfoPage.label_last_name}"
end

And(/^I touch the Save button$/) do
  PersonalInfoPage.click_save_button
end
