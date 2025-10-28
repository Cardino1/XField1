# frozen_string_literal: true

Rails.application.routes.draw do
  root "home#index"

  resources :articles, only: %i[index show]
  resources :opportunities, only: %i[index new create]
  resources :investors, only: %i[index new create]
  resources :subscriptions, only: :create

  namespace :admin do
    root to: "dashboard#index"

    resources :articles
    resources :opportunities do
      member do
        patch :approve
        patch :reject
      end
    end
    resources :investors
    resources :users, only: %i[index destroy]
  end

  get "get_updates", to: "home#get_updates"
end
