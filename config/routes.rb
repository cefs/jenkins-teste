JenkinsTeste::Application.routes.draw do
  root :to => 'page#home'

   controller :page do
      get   "/page", :action => :home
      post  "/page", :action => :create, :as => false
   end

end
