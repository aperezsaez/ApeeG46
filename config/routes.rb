Rails.application.routes.draw do
  get 'clients/by_name'
  namespace :api, defaults: {format: 'json'} do
    namespace :v1 do
      get 'by_date/:date', to: 'covids#by_date'
      get 'dates/:date1/:date2', to: 'covids#bdates'
      get 'clients/:name', to: 'clients#by_name'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
