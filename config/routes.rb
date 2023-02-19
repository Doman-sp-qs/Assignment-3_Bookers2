Rails.application.routes.draw do
  
  root 'homes#top'
  
  devise_for :users
  
  get 'homes/about' => 'homes#about', as: 'about'
  
end
