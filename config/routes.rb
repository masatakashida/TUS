Rails.application.routes.draw do
  resources :testreplyposts
  resources :testposts
  get 'posts/index'

  get 'posts/new'

  get 'posts/show'

  get 'posts/edit'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
