require_relative '../appium/appium_manager'

After do
  $driver.quit
end
