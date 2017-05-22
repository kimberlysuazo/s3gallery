Rails.application.routes.draw do

  resources :albums , only: [:index, :new, :create, :show] do
  	resources :photos, only: [:create]
	end 
  
  root 'albums#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
