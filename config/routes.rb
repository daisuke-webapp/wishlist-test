Rails.application.routes.draw do
    get 'items/search'
    root to: 'items#search'
end
