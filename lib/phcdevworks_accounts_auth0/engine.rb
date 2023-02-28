module PhcdevworksAccountsAuth0
    class Engine < ::Rails::Engine

        # PHCDEVONE - Add Requried Dependencies
        require "omniauth-auth0"

        # PHCDEVONE - Isolate Engine
        isolate_namespace PhcdevworksAccountsAuth0

        # PHCDEVONE - Rspec Generators
        config.generators do |g|
            g.test_framework :rspec
            g.fixture_replacement :factory_bot
            g.factory_bot dir: 'spec/factories'
        end

    end
end
