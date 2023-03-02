    module PhcdevworksAccountsAuth0
    class Auth::HandlerController < ApplicationController

        def callback
            session[:userinfo] = request.env['omniauth.auth']['extra']['raw_info']
            redirect_to main_app.root_path
        end

        def failure
            @error_msg = request.params['message']
        end

        def logout
            reset_session
            redirect_to logout_url, allow_other_host: true
        end

        private

        AUTH0_CONFIG = Rails.application.config.auth0

        def logout_url
            request_params = {
                returnTo: root_url,
                client_id: Rails.application.config.auth0['auth0_client_id']
            }
            URI::HTTPS.build(host: AUTH0_CONFIG['auth0_domain'], path: '/v2/logout', query: request_params.to_query).to_s
        end

        def to_query(hash)
            hash.map { |k, v| "#{k}=#{CGI.escape(v)}" unless v.nil? }.reject(&:nil?).join("&")
        end

    end
end
