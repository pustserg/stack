Rails.application.routes.draw do
  root 'mutants#index'

  resources :mutants
end
