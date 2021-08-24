Rails.application.routes.draw do
    get 'items/search'
    root to: 'items#search'
    
    get 'signup', to: 'users#new'
    resources :users, only: [:index, :show, :create]

end