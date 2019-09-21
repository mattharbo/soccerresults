Rails.application.routes.draw do
  root to:"pages#home", as: :home
  get 'about', to:'pages#about', as: :about
  get 'contact', to:'pages#contact', as: :contact
  get 'teams', to:'teams#index', as: :teams
  post 'teams', to: 'teams#create', as: :newteam
  get 'teams/:id', to:'teams#show', as: :team

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
