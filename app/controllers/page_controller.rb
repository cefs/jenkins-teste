class PageController < ApplicationController
   def home      
   end

   def create      
      @profile_name = params[:name]

      if @profile_name != ""
         respond_to do |format|
            format.json   { render "create", status: 200 }                  
         end      
      else
         respond_to do |format|
            format.json { render "create",  status: 400}
         end      
      end

   end         
end
