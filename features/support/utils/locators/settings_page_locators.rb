require 'yaml'

class SettingsPageLocators
  def self.load_config
    YAML.load_file(File.join(File.dirname(__FILE__), 'locators.yml'))
  end

  def self.personal_info_button
    load_config['settings']['personal_info']
  end

  def self.full_name_label
    load_config['settings']['full_name_label']
  end
end
