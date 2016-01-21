Rails.application.routes.draw do
  devise_for :users
  resources :posts
  resources :lifestyles
  resources :looks
  resources :beautifuls
  resources :styles

  root 'posts#index'


  get '*path' => redirect('/')

end
