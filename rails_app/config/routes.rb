Rails.application.routes.draw do
  
  get root to: 'pages#index'
  get 'pages/contact'
  get 'pages/about'

end
