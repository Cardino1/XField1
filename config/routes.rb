# frozen_string_literal: true

Rails.application.routes.draw do
  root "pages#home"

  resources :opportunities, only: %i[index new create show]
  resources :articles, only: %i[index show]
  resources :investors, only: %i[index new create]
  resources :subscriptions, only: %i[new create]

  namespace :admin do
    root "dashboard#index"
    resources :articles
    resources :opportunities do
      member do
        patch :approve
        patch :reject
      end
    end
    resources :investors, only: %i[index destroy]
    resources :subscriptions, only: %i[index destroy]
  end
end
