require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module TdlNg
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de

    # Do not swallow errors in after_commit/after_rollback callbacks.
    config.active_record.raise_in_transactional_callbacks = true

    # Used in eads_helper.rb to add a link to <userestrict> elements.
    config.use_restrict_text_match = 'Reproductions and Use'
    config.use_restrict_text_replace = '<a href="https://sites.tufts.edu/dca/about-us/research-help/reproductions-and-use/">Reproductions and Use</a>'

    # Custom directories with classes and modules you want to be autoloadable.
    # In our case we want lib to be the folder in which to put anything that's to be available everywhere.
    config.autoload_paths += %W(#{config.root}/lib)
  end
end
