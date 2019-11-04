Rails.application.routes.draw do
  root  'travel_guide#index'
  get 'travel_guide/search'
end
