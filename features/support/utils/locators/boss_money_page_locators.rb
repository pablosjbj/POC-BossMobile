require 'yaml'

class BossMoneyPageLocators
  def self.load_config
    YAML.load_file(File.join(File.dirname(__FILE__), 'locators.yml'))
  end

  def self.settings_button
    load_config['boss_money']['settings_button']
  end
end
