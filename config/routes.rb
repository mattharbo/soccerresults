Rails.application.routes.draw do
  root to:"pages#home", as: :home
  get 'about', to:'pages#about', as: :about
  get 'contact', to:'pages#contact', as: :contact

  resources :teams
  resources :fixtures, only: [:index, :show, :new, :create, :edit, :update]
  # -------
  # Is totaly equal to:
  # get 'teams', to:'teams#index', as: :teams
  # get 'teams/:id', to:'teams#show', as: :team
  # get 'teams/new', to:'teams#new', as: :newteam
  # post 'teams', to: 'teams#create', as: :newteam
  # get 'teams/:id/edit', to: 'teams#edit', as: :editteam
  # patch 'teams/:id', to: 'teams#update', as: :updateteam
  # delete 'teams/:id', to: 'teams#destroy', as: :deleteteam
  # -------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
