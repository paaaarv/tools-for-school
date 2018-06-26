require 'pry'
class Users::RegistrationsController < Devise::RegistrationsController




  def create
      if params[:user][:email].empty? || params[:user][:password].empty? || params[:user][:password_confirmation].empty?
        build_resource
        render "devise/registrations/new"
      else
        super
      end
  end
end
