class UsersController < ApplicationController
  def new
    @user = User.new params[:user]
  end

  def create
    @user = User.new user_params

    if @user.save
      redirect_to root_path, notice: 'Successfully created user.'
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit :email, :password, :password_confirmation
  end
end
