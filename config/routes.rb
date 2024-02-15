Rails.application.routes.draw do
  resources :books, only: [:new, :create, :index, :show]
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to:"homes#top"
  get 'homes/about' => 'homes#about', as: :about
end
