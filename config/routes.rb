Nomster::Application.routes.draw do

  devise_for :users
  root 'places#index'

  resource :places

end
