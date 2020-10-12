require_relative 'boot'
require 'rails/all'
require 'uri'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module BookReviewApp
  class Application < Rails::Application
    config.load_defaults 5.1
    config.generators.template_engine = :slim
    config.i18n.default_locale = :ja
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}').to_s]

    config.generators do |g| 
      g.test_framework :rspec,
        fixtures: false, 
        view_specs: false, 
        helper_specs: false, 
        routing_specs: false
    end
  end
end
