# frozen_string_literal: true

require "webdrivers"

Capybara.asset_host = "http://localhost:3000"

Capybara.register_driver :headless_chrome do |app|
  Capybara::Selenium::Driver.new(
    app,
    browser: :chrome,
    options: Selenium::WebDriver::Chrome::Options.new(
      args: %w[headless disable-dev-shm-usage no-sandbox window-size=1280x1280]
    )
  )
end

Capybara.configure do |config|
  config.default_driver = :rack_test
  config.javascript_driver = :headless_chrome
  config.default_max_wait_time = 5
end

Capybara.automatic_label_click = true
