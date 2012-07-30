class UsersController < ApplicationController
  before_filter :require_current_user

  def edit
    Rails.logger.debug "******** #{params[:id]}"
    @user = User.find(params[:id])
  end

  def update
    Rails.logger.debug("************** #{params.inspect}")
    @user = User.find(params[:id])
    @user.update_attributes(params[:user])
    flash[:notice] = "User updated"

    redirect_to edit_user_url(@user)
  end
end
