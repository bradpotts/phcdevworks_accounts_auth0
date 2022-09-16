Rails.application.routes.draw do

  # Root Page for Testing
  root :to => "website/unsecured#index"
  get 'unsecured' => "website/unsecured#index"
  get 'secured' => "website/secured#index"

  # Mount Engines
  mount PhcdevworksAccountsAuth0::Engine => "/"

end
