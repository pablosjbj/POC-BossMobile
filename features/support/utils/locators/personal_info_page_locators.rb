require 'yaml'

class PersonalInfoPageLocators
  def self.load_config
    YAML.load_file(File.join(File.dirname(__FILE__), 'locators.yml'))
  end

  def self.first_name_text
    load_config['personal_info']['first_name_text']
  end

  def self.last_name_text
    load_config['personal_info']['last_name_text']
  end

  def self.save_button
    load_config['personal_info']['save_button']
  end

  def self.cancel
    load_config['base_page']['cancel']
  end
end
