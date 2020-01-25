Rails.application.routes.draw do

  root 'home#top'
  get 'home/about' => "root#about"

  devise_for :users

  resources :users,only: [:show,:index,:edit,:update]
  resources :books, only: [:new, :create, :index, :show, :destroy]
end
