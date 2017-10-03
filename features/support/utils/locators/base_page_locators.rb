require 'yaml'

class BasePageLocators
  def self.load_config
    YAML.load_file(File.join(File.dirname(__FILE__), 'locators.yml'))
  end

  def self.ignore_button
    load_config['base_page']['ignore_button']
  end

  def self.update_display
    load_config['base_page']['update_display']
  end
end
