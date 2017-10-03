require_relative 'android'

class Appium_factory
  def self.get_configuration(platform)
    case platform
      when 'Android'
        android = Android.new
        android.capabilities_configuration
      when 'iOS'
        # IOS.new
      else
        puts 'Platform not found'
    end
  end
end
