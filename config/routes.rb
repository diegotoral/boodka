Rails.application.routes.draw do
  root 'accounts#index'

  resources :accounts do
    patch :default
  end

  resources :transactions
  resources :reconciliations
  resources :categories, except: :show
  resources :transfers, except: [:show]

  get 'budget' => 'periods#show', as: :current_budget

  scope 'budget/:year/:month' do
    resource :period, only: :show, shallow: true, path: ''
    resources :budgets, only: [:show, :update], shallow: true, path: 'categories', constraints: { :format => /(js|json)/ }
  end
end
