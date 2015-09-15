Rails.application.routes.draw do
  root 'mutants#index'

  resources :mutants
  resources :teams
  resources :tasks
end
