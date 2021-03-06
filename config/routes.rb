Norouko::Application.routes.draw do


  mount Ckeditor::Engine => '/ckeditor'





  resources :articles


  root :to => 'home#index'


  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  get "home/index"
  get "home/contact"
  match 'contact1' => 'home#contact', :as => 'contact1'
  match 'aboutus' => 'home#aboutus', :as => 'aboutus'
  match 'commitment' => 'home#commitment', :as => 'commitment'
  match 'corporate' => 'home#corporate', :as => 'corporate'
  match 'private' => 'home#private', :as => 'private'
  match 'it' => 'home#it', :as => 'it'



  match 'contactus' => 'contact#new', :as => 'contactus', :via => :get
  match 'careers' => 'contact#careers', :as => 'careers', :via => :get
  match 'quote' => 'contact#quote', :as => 'quote', :via => :get


  match 'contactus' => 'contact#create', :as => 'contactus', :via => :post


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

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
