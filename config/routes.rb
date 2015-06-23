Rails.application.routes.draw do
  devise_for :users
  mount Ckeditor::Engine => '/ckeditor'
  get 'pages/home'

  get 'pages/thecompany'

  get 'pages/ourwork'

  get 'pages/plansandpricing'

  get 'pages/tour'

  get 'pages/tutorialsandvideos'

  get 'pages/contact'

  get 'pages/faq'

  get 'pages/tandc'

  get 'tags/:tag', to: 'posts#index', as: :tag

 resources :posts do
    member do
      get "like", to: "posts#upvote"
      get "dislike", to: "posts#downvote"
    end
    resources :comments
  end
  resources :users, only: [:show]

  root 'pages#home'
end
