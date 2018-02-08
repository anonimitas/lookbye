Rails.application.routes.draw do
  
  devise_for :authors
  root to: 'content/stipes#index'
  
  namespace :authors do
      get '/account' => 'accounts#edit', as: :account
      put '/info' => 'accounts#update_info', as: :info
      put '/change_password' => 'accounts#change_password', as: :change_password
	resources :stipes
  end

  scope module: 'content' do
  get 'about' => 'shared#about', as: :about
  get 'contact' => 'shared#contact', as: :contact
  get 'stipes' => 'stipes#index', as: :stipes
  get 'stipes/:id' => 'stipes#show', as: :stipe
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
