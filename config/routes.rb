Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  resources :profiles
  resources :messages

  devise_for :users,  :controllers => { registrations: 'users/registrations' }

  devise_scope :user do

    get '/users/matches/:id'  => 'users#matches', as: :user_matches
    post '/users/add_turd' => 'users#add_turd', as: :user_add_turd

    authenticated :user do
      root :to => 'profiles#show', as: :authenticated_root
    end

    unauthenticated :user do
      root :to => 'devise/registrations#new', as: :unauthenticated_root
    end
    post '/profiles/:id(.:format)' => 'profiles#update_photo'
    get '/profiles/show_user/:id(.:format)' => 'profiles#show_user', :as => :profiles_show
    get '/profiles/shitty_answers/:id(.:format)' => 'profiles#shitty_answers', :as => :answers_show
    get '/profiles/user_answers/:id(.:format)' => 'profiles#user_answers', :as => :user_answers_show
    post '/profiles/:id/edit(.:format)' => 'profiles#edit_profile', :as => :edit_profile_profile

  #  post '/messages/new' => 'messages#create'
  end



  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
