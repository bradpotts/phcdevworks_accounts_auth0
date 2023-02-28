module PhcdevworksAccountsAuth0
    class User::PagesController < ApplicationController

        # User - Dashboard
        def dashboard
        end

        # User - Profile
        def profile
            @user = session[:userinfo]
        end

    end
end
