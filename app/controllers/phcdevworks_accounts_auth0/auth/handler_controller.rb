module PhcdevworksAccountsAuth0
  class Auth::HandlerController < ApplicationController

    def callback
      auth_info = request.env['omniauth.auth']
      session[:userinfo] = auth_info['extra']['raw_info']
      redirect_to '/user/dashboard'
    end

    def failure
      # Failed Authentication
      @error_msg = request.params['message']
    end

    def logout
      # Logout
      reset_session
      redirect_to logout_url
    end

    def logout_url
      request_params = {
        returnTo: root_url,
        client_id: AUTH0_CONFIG['auth0_client_id']
      }
      URI::HTTPS.build(host: AUTH0_CONFIG['auth0_domain'], path: '/v2/logout', query: request_params.to_query).to_s
    end

  end
end
