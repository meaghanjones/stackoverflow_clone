Rails.application.routes.draw do
  root :to => 'questions#index'

  get "/log-in" => "sessions#new"
  post "/log-in" => "sessions#create"
  get "/log-out" => "sessions#destroy", as: :log_out

  resources :questions do
  resources :answers
  end

  resources :sessions, :only => [:new, :create, :destroy]
  resources :users
end
