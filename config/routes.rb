Rails.application.routes.draw do
  get 'welcome/index'
  root 'welcome#index'
  get 'notes/new'
  resources :notes
end
