Rails.application.routes.draw do
  
  
  root 'homes#top'
  get 'homes/about' => 'homes#about', as: 'about'
  
  devise_for :users
  
  resources :books, only:[:index, :show]
  
end