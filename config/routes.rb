Rails.application.routes.draw do
  resources :customers do
    member do
      get 'recharges'
    end
  end
end
