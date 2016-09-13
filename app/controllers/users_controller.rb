class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      UserMailer.signup_confirmation(@user).deliver
      flash[:notice]="Welcome to the site!"
      redirect_to log_in_path
    else
      flash[:alert]="There was a problem creating your account. Please try again."
      redirect_to :back
    end
  end

  def show
    @user = User.new(params[:id])
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
