Rails.application.routes.draw do
  resources :faphras
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'faphras#index'
end
