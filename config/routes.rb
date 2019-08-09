Rails.application.routes.draw do
  resources :decodes
  resources :encodes


  post 'encrypt' => 'encodes#runencryption'
  post 'decrypt' => 'decodes#rundecryption'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
