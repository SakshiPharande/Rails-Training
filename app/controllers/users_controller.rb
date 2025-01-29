class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
      # Convert role to integer before saving
      params[:user][:role] = params[:user][:role].to_i

    @user = User.new(user_params)
    if @user.save
      redirect_to users_path, notice: "User was successfully created."
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :phone_no, :password, :role)
  end
end
