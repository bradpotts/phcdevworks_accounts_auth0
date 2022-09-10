PhcdevworksAccountsAuth0::Engine.routes.draw do

    # User Dashboard
    match "user", to: "user/pages#dashboard", via: "get"
    match "user/profile", to: "user/pages#profile", via: "get"

    # Auth Routes
    get "/auth/", as: "authentication"
    get "/auth/callback" => "auth/handler#callback"
    get "/auth/failure" => "auth/handler#failure"
    get "/auth/logout" => "auth/handler#logout"
    get "/auth/redirect" => "auth/handler#redirect"

end
