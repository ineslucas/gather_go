require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

# related to cloudinary
Dotenv::Railtie.load

module GatherGo
  class Application < Rails::Application
    config.generators do |generate|
      generate.assets false
      generate.helper false
      generate.test_framework :test_unit, fixture: false
    end
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end

# Cloudinary.config do |config|
#   config.cloud_name = 'dyl7sewjl'
#   config.api_key = '682559416698639'
#   config.api_secret = 'OwYR2nTzRhbIZgY6ehkq5Ht8ckE'
#   config.secure = true
#   config.cdn_subdomain = true
# end
