PhcdevworksAccountsAuth0::Engine.routes.draw do

    # PHCDEVONE - User Routes
    get "user/dashboard" => "user/pages#dashboard"
    get "user/profile" => "user/pages#profile"

    # PHCDEVONE - Auth Routes
    get "/auth/callback" => "auth/handler#callback"
    get "/auth/failure" => "auth/handler#failure"
    get "/auth/logout" => "auth/handler#logout"
    get "/auth/redirect" => "auth/handler#redirect"
    get "/auth/logged_out"

end
