# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
Rails.application.config.assets.precompile.concat \
  %w[
    admin.css
    api_v2.css
    market.css
    admin.js
    api_v2.js
    funds.js
    html5.js
    market.js
    swagger_ui.js
    swagger_ui.css
    swagger_ui_print.css
    swagger_ui_screen.css
  ]

# Precompile all available locales
Rails.application.config.assets.precompile.concat(
  Dir.glob(Rails.root.join('app/assets/javascripts/locales/*.js.erb'))
     .map { |f| File.join('locales', File.basename(f, '.erb')) }
)

Dir.chdir 'vendor/assets/yarn_components' do
  Dir['yarn_components/**/*.{jpg,jpeg,png,gif,svg}'].each do |path|
    Rails.application.config.assets.precompile << path
  end
end
