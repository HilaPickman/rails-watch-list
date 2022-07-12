
  Rails.application.routes.draw do
    resources :lists, only: [ :index, :new, :show, :create ] do
    resources :bookmarks, only: [ :new, :create ]
    end
  end
