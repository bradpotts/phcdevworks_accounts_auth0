require_relative "lib/phcdevworks_accounts_auth0/version"

Gem::Specification.new do |spec|

  spec.name        = "phcdevworks_accounts_auth0"
  spec.version     = PhcdevworksAccountsAuth0::VERSION
  spec.authors     = ["PHCDevworks", "BradPotts"]
  spec.email       = ["imfo@phcdevworks.com"]
  spec.homepage    = "https://phcdevworks.com/"
  spec.summary     = "Rails 7 - Engine - User Accounts - Auth0"
  spec.description = "Ruby on Rails 7 Authentication and User Management Engine using Auth0 with a nice-looking dashboard, admin panel and login views to get you going fast on your next project."
  spec.license     = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/phcdevworks/phcdevworks_accounts"
  spec.metadata["changelog_uri"] = "https://github.com/phcdevworks/phcdevworks_accounts/releases"
  spec.metadata["allowed_push_host"] = "http://mygemserver.com"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  # Main Dependencies
  spec.add_dependency "rails", "~> 7.0"
  spec.add_dependency "jbuilder", "~> 2.11"
  spec.add_dependency "paper_trail", "~> 12.3"

  # Theme Dependencies
  spec.add_dependency "phcthemes_admin_panel_pack", "~> 5.1"
  spec.add_dependency "phcthemes_web_theme_pack", "~> 5.0"

  # Helper Dependencies
  spec.add_dependency "phcdevworks_active_menus", "~> 3.0"
  spec.add_dependency "phcdevworks_core", "~> 4.0"
  spec.add_dependency "phcdevworks_notifications", "~> 3.1"
  spec.add_dependency "phcdevworks_titleseo", "~> 4.0"

  # Frontend Dependencies
  spec.add_dependency "wicked", "~> 1.4"
  spec.add_dependency "friendly_id", "~> 5.4"

  # Mailer Dependencies
  spec.add_dependency "mail_form", "~> 1.9"

  # Images & Service Support Dependencies
  spec.add_dependency "aws-sdk-s3", "~> 1.114"
  spec.add_dependency "google-cloud-storage", "~> 1.37"
  spec.add_dependency "mini_magick", "~> 4.11"

  # Security & Payment Dependencies
  spec.add_dependency "omniauth-auth0", "~> 3.0"
  spec.add_dependency "omniauth-rails_csrf_protection", "~> 1.0"

  # Development Dependencies
  spec.add_development_dependency "factory_bot_rails", "~> 6.2"
  spec.add_development_dependency "rspec-rails", "~> 5.1"
  spec.add_development_dependency "spring", "~> 4.0"
  spec.add_development_dependency "spring-commands-rspec", "~> 1.0"
  spec.add_development_dependency "sqlite3", "~> 1.4"

end