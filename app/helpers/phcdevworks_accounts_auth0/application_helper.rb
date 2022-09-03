module PhcdevworksAccountsAuth0
  module ApplicationHelper

    def current_user
      @current_user = session['userinfo']
    end

  end
end
