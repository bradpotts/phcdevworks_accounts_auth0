Rails.application.routes.draw do

  # Root Page for Testing
  root :to => "website/pages#index"

  # Website Pages
  namespace :website do
    get 'pages/index'
  end

  # Mount Engines
  mount PhcdevworksAccountsAuth0::Engine => "/"

end
