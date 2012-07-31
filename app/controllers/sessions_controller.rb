class SessionsController < ApplicationController
  def create
    auth_info = request.env['omniauth.auth']
    user = User.find_or_new_from_auth_info(auth_info)

    if user.new_record?
      user.save!
      self.current_user = user
      flash[:notice] = "User #{user.name} created"
      redirect_to edit_user_url(user)
    else
      flash[:notice] = "Logged in as #{user.name}"
      self.current_user = user
      redirect_to root_url
    end
  end
end
