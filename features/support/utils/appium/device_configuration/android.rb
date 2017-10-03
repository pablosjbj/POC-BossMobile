require_relative '../../../env'

class Android

  @capabilities = Hash.new

  def capabilities_configuration
    @capabilities = {
        device: Environment.platform,
        deviceName: Environment.device_name,
        platformName: Environment.platform,
        platformVersion: '6.0',
        # platformVersion: Environment.platform_version,
        appPackage: Environment.android_package,
        appActivity: Environment.android_activity
    }
  end

end
