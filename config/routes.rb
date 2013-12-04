Atlas::Application.routes.draw do
  resources :receipts
  root :to => redirect('/receipts')
end
