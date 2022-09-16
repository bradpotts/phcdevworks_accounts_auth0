module Secured

    extend ActiveSupport::Concern

    included do
        before_action :logged_in_using_omniauth?
    end

    def logged_in_using_omniauth?
        redirect_to main_app.root_path unless session[:userinfo].present?
    end

end