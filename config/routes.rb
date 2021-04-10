Rails.application.routes.draw do
  resources :intervallic_formulas
  resources :trumpet_studies
  resources :bass_studies
  resources :piano_studies
  resources :guitar_studies
  root to: 'guitar_studies#index'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
