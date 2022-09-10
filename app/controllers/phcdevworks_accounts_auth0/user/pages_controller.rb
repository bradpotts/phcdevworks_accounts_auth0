module PhcdevworksAccountsAuth0
  class User::PagesController < ApplicationController

    def dashboard
    end

    def profile
      @user = session[:userinfo]
    end

  end
end
