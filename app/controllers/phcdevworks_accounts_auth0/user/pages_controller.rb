module PhcdevworksAccountsAuth0
  class User::PagesController < ApplicationController

    def profile
      @user = session[:userinfo]
    end



  end
end
