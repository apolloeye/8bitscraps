ActionController::Routing::Routes.draw do |map|
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
  map.root :controller => "home"

  # See how all your routes lay out with "rake routes"

  map.connect '/contact',
  	:controller => 'home',
  	:action => 'contact'
  	
  #Routes for the moving of blog posts between old blog and new
  map.connect '/serialise-a-ruby-hash-into-a-database-field/',
  	:controller => 'home',
  	:action => 'redirect',
  	:path => '/blog/serialise-a-ruby-hash-into-a-database-field/'
  
  map.connect '/creating-app-docs-when-deploying-with-capistrano/',
  	:controller => 'home',
  	:action => 'redirect',
  	:path => '/blog/creating-app-docs-when-deploying-with-capistrano/'
  	
  	
  map.connect '/adding-readme-to-gitorious-repository-page-like-github/',
  	:controller => 'home',
  	:action => 'redirect',
  	:path => '/blog/adding-readme-to-gitorious-repository-page-like-github/'
 
  map.connect '/web-app-review-error-notification-with-airbrake-formally-hoptoad/',
  	:controller => 'home',
  	:action => 'redirect',
  	:path => '/blog/web-app-review-error-notification-with-airbrake-formally-hoptoad/'
  
  map.connect '/new-project-hostee/',
  	:controller => 'home',
  	:action => 'redirect',
  	:path => '/blog/new-project-hostee/'
  	
  map.connect '/finding-the-process-id-of-a-process-running-on-a-specific-port/',
  	:controller => 'home',
  	:action => 'redirect',
  	:path => '/blog/finding-the-process-id-of-a-process-running-on-a-specific-port/'
  	
  map.connect '/using-tinymce-with-interchange/',
  	:controller => 'home',
  	:action => 'redirect',
  	:path => '/blog/using-tinymce-with-interchange/'
  	
  map.connect '/interchange-not-starting-no-sockets-interchange-server-terminating/',
  	:controller => 'home',
  	:action => 'redirect',
  	:path => '/blog/interchange-not-starting-no-sockets-interchange-server-terminating/'
  	
  map.connect '/what-information-do-you-want-using-geektools/',
  	:controller => 'home',
  	:action => 'redirect',
  	:path => '/blog/what-information-do-you-want-using-geektools/'
  	
  map.connect '/displaying-hardware-temperatures-with-macbook/',
  	:controller => 'home',
  	:action => 'redirect',
  	:path => '/blog/displaying-hardware-temperatures-with-macbook/'
  	
  map.connect '/announcing-vuga-rails-plugin-for-viewing-google-analytics-statistics/',
  	:controller => 'home',
  	:action => 'redirect',
  	:path => '/blog/announcing-vuga-rails-plugin-for-viewing-google-analytics-statistics/'
  	
  map.connect '/top-resources-for-learning-ruby-on-rails/',
  	:controller => 'home',
  	:action => 'redirect',
  	:path => '/blog/top-resources-for-learning-ruby-on-rails/'
  	
  map.connect '/creating-vcards-with-ruby-on-rails/',
  	:controller => 'home',
  	:action => 'redirect',
  	:path => '/blog/creating-vcards-with-ruby-on-rails/'
  	
  map.connect '/creating-columns-of-equal-heights-using-divs/',
  	:controller => 'home',
  	:action => 'redirect',
  	:path => '/blog/creating-columns-of-equal-heights-using-divs/'
  	
  map.connect '/alfred-a-new-launcher-for-mac-os-x/',
  	:controller => 'home',
  	:action => 'redirect',
  	:path => '/blog/alfred-a-new-launcher-for-mac-os-x/'
  	
  map.connect '/using-geektools-to-display-sunrise-and-sunset-times/',
  	:controller => 'home',
  	:action => 'redirect',
  	:path => '/blog/using-geektools-to-display-sunrise-and-sunset-times/'
  	
  map.connect '/displaying-google-analytics-statistic-using-geektools/',
  	:controller => 'home',
  	:action => 'redirect',
  	:path => '/blog/displaying-google-analytics-statistic-using-geektools/'
 
  map.connect '/displaying-google-analytics-information-using-ruby/',
  	:controller => 'home',
  	:action => 'redirect',
  	:path => '/blog/displaying-google-analytics-information-using-ruby/'
  	
  map.connect '/displaying-weather-information-on-your-desktop-using-geektools/',
  	:controller => 'home',
  	:action => 'redirect',
  	:path => '/blog/displaying-weather-information-on-your-desktop-using-geektools/'
  	
  map.connect '/great-iphone-apps-for-managing-your-blog/',
  	:controller => 'home',
  	:action => 'redirect',
  	:path => '/blog/great-iphone-apps-for-managing-your-blog/'
  	
  map.connect '/running-maintenance-tasks-with-rake-ruby-on-rails-and-cron-jobs/',
  	:controller => 'home',
  	:action => 'redirect',
  	:path => '/blog/running-maintenance-tasks-with-rake-ruby-on-rails-and-cron-jobs/'
  	
  map.connect '/displaying-ical-calendar-and-ical-todos-on-your-desktop/',
  	:controller => 'home',
  	:action => 'redirect',
  	:path => '/blog/displaying-ical-calendar-and-ical-todos-on-your-desktop/'
  	
  map.connect '/displaying-system-information-using-geektools/',
  	:controller => 'home',
  	:action => 'redirect',
  	:path => '/blog/displaying-system-information-using-geektools/'
  	
  map.connect '/displaying-itunes-album-art-and-song-information-using-geektools/',
  	:controller => 'home',
  	:action => 'redirect',
  	:path => '/blog/displaying-itunes-album-art-and-song-information-using-geektools/'
  	
  map.connect '/displaying-date-and-time-tools-using-geektools/',
  	:controller => 'home',
  	:action => 'redirect',
  	:path => '/blog/displaying-date-and-time-tools-using-geektools/'
  	
  map.connect '/using-geektools-to-display-information-on-your-desktop/',
  	:controller => 'home',
  	:action => 'redirect',
  	:path => '/blog/using-geektools-to-display-information-on-your-desktop/'
  	
  map.connect '/where-does-goldmine-store-a-contacts-email-address/',
  	:controller => 'home',
  	:action => 'redirect',
  	:path => '/blog/where-does-goldmine-store-a-contacts-email-address/'
  	
  map.connect '/saving-attachments-using-tmail-and-ruby-on-rails/',
  	:controller => 'home',
  	:action => 'redirect',
  	:path => '/blog/saving-attachments-using-tmail-and-ruby-on-rails/'
  	
  map.connect '/collecting-emails-using-ruby-on-rails/',
  	:controller => 'home',
  	:action => 'redirect',
  	:path => '/blog/collecting-emails-using-ruby-on-rails/'

  map.connect '/creating-sub-controllers-in-ruby-on-rails/',
  	:controller => 'home',
  	:action => 'redirect',
  	:path => '/blog/creating-sub-controllers-in-ruby-on-rails/'
  	
  map.connect '/getting-the-current-url-uri-with-rails/',
  	:controller => 'home',
  	:action => 'redirect',
  	:path => '/blog/getting-the-current-url-uri-with-rails/'
  	
  map.connect '/getting-the-current-url-uri-with-rails/',
  	:controller => 'home',
  	:action => 'redirect',
  	:path => '/blog/getting-the-current-url-uri-with-rails/'
  	
  map.connect '/creating-polaroids-from-an-image-using-imagemagick/',
  	:controller => 'home',
  	:action => 'redirect',
  	:path => '/blog/creating-polaroids-from-an-image-using-imagemagick/'
  	
  map.connect '/connecting-to-a-network-folder-on-windows-mobile/',
  	:controller => 'home',
  	:action => 'redirect',
  	:path => '/blog/connecting-to-a-network-folder-on-windows-mobile/'
  	
  map.connect '/akismet-on-rails-using-rakismet/',
  	:controller => 'home',
  	:action => 'redirect',
  	:path => '/blog/akismet-on-rails-using-rakismet/'
  	
  map.connect '/value-undefined-on-line-64-of-rawinflate/',
  	:controller => 'home',
  	:action => 'redirect',
  	:path => '/blog/value-undefined-on-line-64-of-rawinflate/'
  	
  map.connect '/rails-error-only-get-head-post-put-and-delete-requests-are-allowed/',
  	:controller => 'home',
  	:action => 'redirect',
  	:path => '/blog/rails-error-only-get-head-post-put-and-delete-requests-are-allowed/'
  	
  map.connect '/using-interchange-profile/',
  	:controller => 'home',
  	:action => 'redirect',
  	:path => '/blog/using-interchange-profile/'
  	
  map.connect '/116/',
  	:controller => 'home',
  	:action => 'redirect',
  	:path => '/blog/116/'
  	
  map.connect '/creating-video-thumbnails-using-ffmpeg/',
  	:controller => 'home',
  	:action => 'redirect',
  	:path => '/blog/creating-video-thumbnails-using-ffmpeg/'
  	
  map.connect '/using-passenger/',
  	:controller => 'home',
  	:action => 'redirect',
  	:path => '/blog/using-passenger/'
  	
  map.connect '/introduction-to-cron-jobs/',
  	:controller => 'home',
  	:action => 'redirect',
  	:path => '/blog/introduction-to-cron-jobs/'
  	
  map.connect '/copying-interchange/',
  	:controller => 'home',
  	:action => 'redirect',
  	:path => '/blog/copying-interchange/'
  	
  map.connect '/creating-your-own-rails-generator/',
  	:controller => 'home',
  	:action => 'redirect',
  	:path => '/blog/creating-your-own-rails-generator/'
  	
  map.connect '/counting-rows-with-mysql/',
  	:controller => 'home',
  	:action => 'redirect',
  	:path => '/blog/counting-rows-with-mysql/'
  	
  map.connect '/introduction-to-regular-expressions/',
  	:controller => 'home',
  	:action => 'redirect',
  	:path => '/blog/introduction-to-regular-expressions/'
  
  map.connect '/stripping-html-tags-from-text-using-re/',
  	:controller => 'home',
  	:action => 'redirect',
  	:path => '/blog/stripping-html-tags-from-text-using-re/'
  
  map.connect '/creating-objects-and-running-functions-from-strings-in-ruby/',
  	:controller => 'home',
  	:action => 'redirect',
  	:path => '/blog/creating-objects-and-running-functions-from-strings-in-ruby/'
  
  map.connect '/creating-dynamic-images-with-gdlib/',
  	:controller => 'home',
  	:action => 'redirect',
  	:path => '/blog/creating-dynamic-images-with-gdlib/'
  	
  map.connect '/interchange-flex-select-display-filters/',
  	:controller => 'home',
  	:action => 'redirect',
  	:path => '/blog/interchange-flex-select-display-filters/'

  map.connect '/installing-interchange-on-linux/',
  	:controller => 'home',
  	:action => 'redirect',
  	:path => '/blog/installing-interchange-on-linux/'
  	
  map.connect '/using-iptables/',
  	:controller => 'home',
  	:action => 'redirect',
  	:path => '/blog/using-iptables/'
  	
  map.connect '/interchange-error-losing-sessions-when-switching-to-https/',
  	:controller => 'home',
  	:action => 'redirect',
  	:path => '/blog/interchange-error-losing-sessions-when-switching-to-https/'
  	
  map.connect '/interchange-error-gdbm-could-not-tie-to-file-gdbm/',
  	:controller => 'home',
  	:action => 'redirect',
  	:path => '/blog/interchange-error-gdbm-could-not-tie-to-file-gdbm/'
  	
  map.connect '/premature-end-of-script-headers/',
  	:controller => 'home',
  	:action => 'redirect',
  	:path => '/blog/premature-end-of-script-headers/'
  	
  map.connect '/making-soap-requests-with-perl/',
  	:controller => 'home',
  	:action => 'redirect',
  	:path => '/blog/making-soap-requests-with-perl/'
  	
  map.connect '/creating-a-subversion-repositry/',
  	:controller => 'home',
  	:action => 'redirect',
  	:path => '/blog/creating-a-subversion-repositry/'
  
  map.connect '/begineers-subversion-commands/',
  	:controller => 'home',
  	:action => 'redirect',
  	:path => '/blog/begineers-subversion-commands/'
  
  map.connect '/using-vi/',
  	:controller => 'home',
  	:action => 'redirect',
  	:path => '/blog/using-vi/'
  	
  map.connect '/using-tiny-mce-on-rails/',
  	:controller => 'home',
  	:action => 'redirect',
  	:path => '/blog/using-tiny-mce-on-rails/'
  	
  map.connect '/using-html-editors-in-interchange/',
  	:controller => 'home',
  	:action => 'redirect',
  	:path => '/blog/using-html-editors-in-interchange/'
  	
  map.connect '/rewriting-subdomains/',
  	:controller => 'home',
  	:action => 'redirect',
  	:path => '/blog/rewriting-subdomains/'
  	
  map.connect '/setting-up-a-mongrel-cluster/',
  	:controller => 'home',
  	:action => 'redirect',
  	:path => '/blog/setting-up-a-mongrel-cluster/'
  
  	
  # Install the default routes as the lowest priority.
  # Note: These default routes make all actions in every controller accessible via GET requests. You should
  # consider removing or commenting them out if you're using named routes and resources.
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
