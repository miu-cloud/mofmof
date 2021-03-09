require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module DevExam
  class Application < Rails::Application
    config.generators do |g|
      # この二行の記述で自動生成しない設定
      g.assets false
      g.helper false
    end
  end
end
