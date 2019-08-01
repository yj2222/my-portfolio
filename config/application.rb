require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module MyPortfolio
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2
    # config.assets.initialize_on_precompile = false
    
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
    config.generators do |g|
      g.stylesheets false
      g.javascripts false
      g.helper false
      g.test_framework false
      # ActionView::Template::Error (:ja is not a valid locale):
      # 本番で上記が出たので以下を追記
      I18n.enforce_available_locales = false
      config.time_zone = 'Tokyo'
      config.i18n.default_locale = :ja
    end
  end
end
