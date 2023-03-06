Rails.application.routes.draw do

    # PHCDEVONE - Root for Applications
    root "website/pages#index"

    #PHCDEVONE - Authorized Test Page
    namespace :user do
        get "dashboard/index"
    end

    # PHCDEVONE - Unauthorized Test Page
    namespace :website do
        get "pages/index"
    end

    # PHCDEVONE - Mount Engine for Testing
    mount PhcdevworksAccountsAuth0::Engine => "/"

end
