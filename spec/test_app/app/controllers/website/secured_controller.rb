class Website::SecuredController < ApplicationController

    # Requires Auth
    include Secured

    def index
    end

end
