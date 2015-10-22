Rails.application.routes.draw do
  root 'accounts#index'

  resources :accounts do
    patch :default
  end

  resources :transactions
  resources :reconciliations
  resources :categories, except: [:show, :new]
  resources :transfers, except: [:show, :edit, :update]

  get 'budget' => 'budget#show', as: :current_budget

  scope 'budget/:year/:month' do
    resource :budget, only: :show, shallow: true, path: '', controller: :budget
    resources :budget_categories, only: [:index, :show, :update], shallow: true, path: 'categories', constraints: { :format => /(js|json)/ }
  end
end
