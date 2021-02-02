Rails.application.routes.draw do
  resources :contacts
  resources :pets
  resources :users
	root 'contacts#new'
	resources :dogs
	resources :owners
end
