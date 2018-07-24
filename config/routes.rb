Rails.application.routes.draw do
  namespace :master do
    get 'city/index'
    get 'city/new'
    get 'city/edit'
    get 'city/delete'
    

    post 'city/create'
    post 'city/update'
    post 'city/destroy'
  end

  namespace :master do
    get 'speciality/index'
    get 'speciality/new'
    get 'speciality/edit'
    get 'speciality/delete'

    post 'speciality/create'
    post 'speciality/update'
    post 'speciality/destroy'
  end
  
  namespace :nutritionist do
    get 'profile/index'
    get 'profile/new'
    get 'profile/edit'
    get 'profile/delete'

    post 'profile/create'
    post 'profile/update'
    post 'profile/destroy'
  end

  namespace :nutritionist_search_api do
      match 'masters/retrieve_cities', via: [:post, :options]
      match 'masters/retrieve_specialities', via: [:post, :options]
      match 'search/retrieve_nutritionist', via: [:post, :options]
      match 'nutritionist_profile/retrieve_nutritionist_profile', via: [:post, :options]
  end

  root "nutritionist/profile#index"
  
  match ':controller(/:action(/:id))', :via => [:get, :post]

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
