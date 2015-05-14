Nomster::Application.routes.draw do

  root 'places#index'

  resource :places

end
