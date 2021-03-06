Rails.application.routes.draw do
    get 'items/search'
    root to: 'items#search'
    
    get 'login', to: 'sessions#new'
    post 'login', to: 'sessions#create'
    delete 'logout', to: 'sessions#destroy'
    
    get 'signup', to: 'users#new'
    resources :users, only: [:index, :show, :create] 
    resources :lists, only: [:create, :destroy]  
end