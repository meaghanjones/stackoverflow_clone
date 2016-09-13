Rails.application.routes.draw do
 root :to => 'questions#index'

 resources :questions
 resources :answers


 resources :users
end
