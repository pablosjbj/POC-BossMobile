require 'yaml'

class Environment
  def self.load_config
    YAML.load_file(File.join(File.dirname(__FILE__), 'env.yml'))
  end

  def self.appium_server_url
    @protocol = load_config['appium']['protocol']
    @appium_server = load_config['appium']['appium_server']
    @appium_port = load_config['appium']['appium_port']
    @extension = load_config['appium']['extension']
    @appium = "#{@protocol}://#{@appium_server}:#{@appium_port}#{@extension}"
  end

  def self.platform
    load_config['device']['platform']
  end

  def self.platform_version
    load_config['device']['platform_version']
  end

  def self.platform_name
    load_config['device']['platform_name']
  end

  def self.device_name
    load_config['device']['device_name']
  end

  def self.android_package
    load_config['android']['app_package']
  end

  def self.android_activity
    load_config['android']['app_activity']
  end

  def self.ios_udid
    load_config['iOS']['udid']
  end

  def self.ios_bundleid
    load_config['iOS']['bundleId']
  end

  def self.app
    load_config['device']['app']
  end
end
