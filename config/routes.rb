LuxuryMall::Application.routes.draw do
  Mercury::Engine.routes


  resources :home do
    member do
      get 'home'
    end
  end

  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  devise_for :users

  match ':bout' => 'boutiques#show', constraints: Boutique, :as => "bout"
  match ':bout/description' => 'boutiques#description', constraints: Boutique

  #match ':bout/:year' => 'boutiques#show', constraints: Season, :as => "year"

  #match ':bout/:year/:season' => 'boutiques#show', :as => "season"

  resources :boutiques do
    member { post :mercury_update }
  end

  # controller :boutiques do
  #   scope '/', :name_prefix => 'category_with_year_and_season' do
  #     scope :path => '/:boutique', constraints: Boutique, :as => :boutique do
  #       scope :path => '/:year', constraints: Year, :as => :year do
  #         scope :path => '/:season', constraints: Season, :as => :season do
  #           match '/:category', constraints: Category, :as => :category, :to => :show_category
  #         end
  #       end
  #     end
  #   end
  # end

  # controller :boutiques do
  #   scope '/', :name_prefix => 'category_with_year' do
  #     scope :path => '/:boutique', constraints: Boutique, :as => :boutique do
  #       scope :path => '/:year', constraints: Year, :as => :year do
  #         match '/:category', constraints: Category, :as => :category, :to => :show
  #       end
  #     end
  #   end
  # end

  # controller :boutiques do
  #   scope '/', :name_prefix => 'boutique_year_season' do
  #     scope :path => '/:boutique', constraints: Boutique, :as => :boutique do
  #       scope :path => '/:year', constraints: Year, :as => :year do
  #           match '/:season', constraints: Season, :as => :season, :to => :show_season
  #         end
  #       end
  #   end
  # end

  # controller :boutiques do
  #   scope '/', :name_prefix => 'boutique' do
  #     scope :path => '/:boutique', constraints: Boutique, :as => :boutique do
  #       match '/:year', constraints: Year, :as => :year, :to => :show_year
  #     end
  #   end
  # end

  # controller :boutiques do
  #   scope :path => '/:boutique', constraints: Boutique, :as => :boutique do
  #     match '/:category', constraints: Category, :as => :category, :to => :show_category
  #   end
  # end

  # controller :boutiques do
  #   scope '/', :name_prefix => 'boutique', constraints: Boutique do
  #     match '/:boutique', :as => :boutique, :to => :show
  #   end
  # end

  # controller :boutiques do
  #   match '/:category', constraints: Category, :as => :category, :to => :with_category
  # end

  



  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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
  


  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  root :to => 'home#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
