Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get '/', to: 'welcome#index'

  get '/blog', to: 'blog#index'
  get '/blog/new', to: 'blog#new'
  # root "articles#index"
end
