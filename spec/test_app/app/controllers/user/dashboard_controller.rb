class User::DashboardController < ApplicationController

    # PHCDEVONE - Load Requried Libraries
    before_action :authenticate_user!

    # PHCDEVONE - Dashboard
    def index
    end

end
