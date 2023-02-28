require_relative "lib/phcdevworks_accounts_auth0/version"

Gem::Specification.new do |spec|

  # PHCDEVONE - 
  spec.name        = "phcdevworks_accounts_auth0"
  spec.version     = PhcdevworksAccountsAuth0::VERSION
  spec.authors     = ["PHCDevworks", "BradPotts"]
  spec.email       = ["imfo@phcdevworks.com"]
  spec.homepage    = "https://phcdevworks.com/"
  spec.summary     = "Rails 7 - Engine - Accounts - Auth0"
  spec.description = "PHCDevworks' Rails 7 engine simplifies user account management with secure and scalable Auth0 authentication. Customize and build better apps faster with our easy-to-use engine. Streamline your app development process and enhance security with PHCDevworks Opensource."
  spec.license     = "MIT"
  
  # PHCDEVONE - 
  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  # PHCDEVONE - 
  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/phcdevworks/phcdevworks_accounts_auth0/"
  spec.metadata["changelog_uri"] = "https://github.com/phcdevworks/phcdevworks_accounts_auth0/releases/"

  # PHCDEVONE - 
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  # PHCDEVONE - Main
  spec.add_dependency "rails", ">= 7.0.4.2"

  # PHCDEVONE - Auth
  spec.add_dependency "omniauth-auth0", "~> 3.1"
  spec.add_dependency "omniauth-rails_csrf_protection", "~> 1.0"

  # PHCDEVONE - Helpers
  spec.add_dependency "phcdevworks_active_menus", "~> 4.0"
  spec.add_dependency "phcdevworks_core", "~> 5.0"
  spec.add_dependency "phcdevworks_notifications", "~> 4.0"
  spec.add_dependency "phcdevworks_titleseo", "~> 5.0"

end
