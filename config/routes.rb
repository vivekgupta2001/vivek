PersonalAssistant::Application.routes.draw do
  get "companies/new"
  resources :companies
  get "static_pages/home"
  get "static_pages/help"
  get "static_pages/about"
end
