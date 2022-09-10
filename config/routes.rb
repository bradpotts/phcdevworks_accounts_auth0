PhcdevworksAccountsAuth0::Engine.routes.draw do

    # User Dashboard
    get "dashboard" => 'user/pages#dashboard'
    get "profile" => 'user/pages#profile'

    # Auth Routes
    get "/auth/", as: "authentication"
    get "/auth/callback" => "auth/handler#callback"
    get "/auth/failure" => "auth/handler#failure"
    get "/auth/logout" => "auth/handler#logout"
    get "/auth/redirect" => "auth/handler#redirect"

end
