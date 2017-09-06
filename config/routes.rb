Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 # root 'pictures#index'
 #  get 'pictures' => 'pictures#index'
 #
 #  delete 'pictures/:id' => 'pictures#destroy'
 #
 #  get 'pictures/:id/edit' => 'pictures#edit'
 #  patch 'pictures/:id' => 'pictures#update'
 #
 #  get 'pictures/new' => 'pictures#new'
 #  post 'pictures/new' => 'pictures#create'
 #  get 'pictures/:id' => 'pictures#show'

  resources :pictures
end
