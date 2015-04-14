ActionController::Routing::Routes.draw do |map|
  map.resources :myares

  map.resources :testmes

  map.resources :performances

  map.resources :checkins

  map.resources :cares

  map.resources :commission_configs

  map.resources :commission_styles

  map.resources :leave_styles

  map.resources :leaves,:collection=>{:leave_chect=>:get}
  
  map.resources :leave_states ,:collection=>{:leave_state_check=>:get,:leave_pass=>:get}

  map.resources :material_tasks

  map.resources :attendances

  map.resources :work_salaries

  map.reset_password '/service_style/:id', :controller => 'home',  :action => 'index'
  map.reset_password '/product/:id', :controller => 'home',  :action => 'product_detile'
  map.reset_password 'air_nav', :controller => 'home',  :action => 'air_nav'
  #map.reset_password 'admins', :controller => 'service_tasks',  :action => 'index'
  map.reset_password 'admin_new_order', :controller => 'orders',  :action => 'admin_new_order'
  map.reset_password 'check_order_show', :controller => 'orders',  :action => 'check_order_show'
  map.reset_password 'admin_create', :controller => 'orders',  :action => 'admin_create'
  map.reset_password 'check_or_create_user', :controller => 'orders',  :action => 'check_or_create_user'
  map.reset_password 'send_vip_dh_message', :controller => 'orders',  :action => 'send_vip_dh_message'
  map.reset_password 'show_vip_dh', :controller => 'orders',  :action => 'show_vip_dh'
  map.reset_password 'check_admin_order', :controller => 'orders',  :action => 'check_admin_order'
  
  
  
  map.reset_password 'carender', :controller => 'home',  :action => 'carender'
  map.reset_password 'jifenshop', :controller => 'home',  :action => 'jifenshop'
  map.reset_password 'huayu', :controller => 'home',  :action => 'huayu'
  map.reset_password 'task_entry_into', :controller => 'task_entries',  :action => 'task_entry_into'
 
  map.resources :admins ,:collection=>{:flow=>:get,:ui=>:get}
  
  map.resources :depts

  map.resources :cad_positions
  
  map.resources :news,:collection=>{:newlist=>:get} 
  
  map.resources :newsgroups
  
  map.resources :vipconsumnos

  map.resources :situations

  map.resources :has_pays

  map.resources :dostyles

  map.resources :works

  map.resources :task_entries

  map.resources :service_tasks

  map.resources :orders,:collection=> {
  :oldorders=>:get,:products_search=>:get,:print_order=>:get}

  map.resources :houses

  map.resources :rent_carts

  map.resources :tickets

  map.resources :spas

  map.resources :carts

  map.resources :companies

  map.resources :stores,:collection=> {
  :add_to_cart=>:get,:checkout=>:get,:empty_cart=>:get,:back=>:get}
  
  map.resources :products,:collection=>{:check_hot=>:get,:check_suggest=>:get}
  
  map.resources :permissions
  
  map.resources :roles
  
  map.resources :vip_records

  map.resources :services,:collection=> {
  :ticket_orders=>:get,:house_orders=>:get,:speser_orders=>:get}

  map.resources :vips,:collection=>{:vip_search=>:get}

  map.resources :vip_styles

  map.resources :vip_services
 
  map.resources :vip_details

  map.resources :service_styles,:collection=>{:check_youji=>:get}
  
  
# sunwenjie-SPA收入分析
   map.resources :finance_report,:collection=>{:customer=>:get,:export_data=>:get,:export_customerData=>:get}
   map.resources :worker_salary_report,:collection=>{:exportSalaryData=>:get}
   map.resources :vip_sell_report
  # The priority is based upon order of creation: first created -> highest priority.

  # Sample of regular route:
  #   map.connect 'products/:id', :controller => 'catalog', :action => 'view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   map.purchase 'products/:id/purchase', :controller => 'catalog', :action => 'purchase'
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   map.resources :products

  # Sample resource route with options:
  #   map.resources :products, :member => { :short => :get, :toggle => :post }, :collection => { :sold => :get }

  # Sample resource route with sub-resources:
  #   map.resources :products, :has_many => [ :comments, :sales ], :has_one => :seller
  
  # Sample resource route with more complex sub-resources
  #   map.resources :products do |products|
  #     products.resources :comments
  #     products.resources :sales, :collection => { :recent => :get }
  #   end

  # Sample resource route within a namespace:
  #   map.namespace :admin do |admin|
  #     # Directs /admin/products/* to Admin::ProductsController (app/controllers/admin/products_controller.rb)
  #     admin.resources :products
  #   end

  # You can have the root of your site routed with map.root -- just remember to delete public/index.html.
  # map.root :controller => "welcome"

  # See how all your routes lay out with "rake routes"
  map.resources :addresses
  map.resources :mains
  map.resources :user_profiles
  map.resources :sessions
  map.resources :users, :member => { :suspend => :put,:unsuspend => :put,:purge => :delete }  
  map.root :controller => "home" 
  #map.root :controller => "mains" ,:action =>"overview"
  # Install the default routes as the lowest priority.
  # Note: These default routes make all actions in every controller accessible via GET requests. You should
  # consider removing or commenting them out if you're using named routes and resources.
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
  
  
  map.connect 'vip_car_search',:controller=>"vip_records", :action=>"vip_car_search"
  map.connect 'save_order_infs',:controller=>"vipconsumnos", :action=>"save_order_infs"
  map.connect 'show_vip_consume',:controller=>"vipconsumnos", :action=>"show_vip_consume"
  map.connect 'send_vip_consume_message',:controller=>"vipconsumnos", :action=>"send_vip_consume_message"
  
  map.connect 'overview',:controller=>"mains", :action=>"overview"
  map.connect 'service',:controller=>"mains", :action=>"service"
  map.connect 'servicetow',:controller=>"mains", :action=>"servicetow"
  map.connect 'objectservice',:controller=>"mains", :action=>"objectservice"
  map.connect 'objectservicetow',:controller=>"mains", :action=>"objectservicetow"
  map.connect 'objectservicethird',:controller=>"mains", :action=>"objectservicethird"
  map.connect 'discription',:controller=>"mains", :action=>"discription"
  map.connect '/company_desc/:menu_id', :controller => 'home',  :action => 'company_desc' 
  map.connect '/huayucompany_desc/:menu_id', :controller => 'home',  :action => 'huayucompany_desc' 
  
  
  map.reset_password '/membership/:menu_id', :controller => 'home',  :action => 'membership' 
  ["membership","huayucontact_us","huayucompany_desc","company_desc","suggest_nb","yihuo_forum","join_area","yiru","yichu","search","contact_us","get_productions","get_home_big_picture"].each{ |ac| map.home_action "/#{ac}", :controller => 'home',  :action => ac } 

  # map.connect 'leave_state_check', :controller => "leave_states", :action => "leave_state_check" 

  map.connect 'vipnotice',:controller=>"mains", :action=>"vipnotice"
  map.connect 'vipfastservice',:controller=>"mains", :action=>"vipfastservice"
  map.connect 'foodservice',:controller=>"mains", :action=>"foodservice"
  map.connect 'safeservice',:controller=>"mains", :action=>"safeservice"
  map.connect 'timehotelservice',:controller=>"mains", :action=>"timehotelservice"
  map.connect 'meetingservice',:controller=>"mains", :action=>"meetingservice"
  map.connect 'bodystyleservice',:controller=>"mains", :action=>"bodystyleservice"
  map.connect 'secretaryservice',:controller=>"mains", :action=>"secretaryservice"
  map.connect 'otherservice',:controller=>"mains", :action=>"otherservice"
  
  #map.connect 'center',:controller=>"mains", :action=>"center"
  map.reset_password '/centers', :controller => 'center',  :action => 'index'    
  map.reset_password 'jichang', :controller => 'center',  :action => 'jichang'    
  map.reset_password 'hotel', :controller => 'center',  :action => 'hotel'  
  map.reset_password 'speser', :controller => 'center',  :action => 'speser'  
  map.reset_password 'ticket', :controller => 'center',  :action => 'ticket'  
  map.reset_password 'jifen', :controller => 'center',  :action => 'jifen' 
  
  map.reset_password '/send_emails', :controller => 'users', :action => 'password_send' 
  map.reset_password '/show_email', :controller => 'users', :action => 'show_email' 
  map.activate '/activate/:activation_code', :controller => 'users',  :action => 'activate'
  map.contactus '/contactus',:controller=>'users',:action=>'contactus'
  map.logout '/logout', :controller => 'sessions', :action => 'destroy'
  map.login '/login', :controller => 'sessions', :action => 'new'
  map.register '/register', :controller => 'users', :action => 'create'
  map.signup '/signup', :controller => 'users', :action => 'new'
  map.forgot_password '/forgot_password', :controller => 'users', :action => 'forgot_password'
  map.reset_password '/reset_password/:id', :controller => 'users', :action => 'reset_password'      
  map.reset_password '/change_password', :controller => 'users',  :action => 'change_password'  
  map.connect 'commission_config_edit', :controller => 'commission_configs', :action => 'commission_config_edit'
  map.connect 'commission_config_destroy', :controller => 'commission_configs', :action => 'commission_config_destroy'
  map.connect 'care_edit', :controller => 'cares', :action => 'care_edit'
  map.connect 'care_destroy', :controller => 'cares', :action => 'care_destroy'
        
     


end