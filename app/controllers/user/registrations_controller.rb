class User::RegistrationsController < Devise::RegistrationsController
   before_filter :configure_permited_parameters
   
   private
   
   def configure_permited_parameters
       devise_parameter_sanitizer.for(:sign_up).push(:first_name, :last_name)
       devise_parameter_sanitizer.for(:account_update).push(:first_name, :last_name)
   end
end