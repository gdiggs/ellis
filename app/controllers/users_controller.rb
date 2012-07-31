class UsersController < ApplicationController
  before_filter :require_current_user

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update_attributes(params[:user])
    flash[:notice] = "User updated"

    redirect_to edit_user_url(@user)
  end
end
