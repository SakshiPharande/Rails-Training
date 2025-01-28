class Api::V1::UsersController < ApplicationController
  # Skip default Rails features like CSRF if needed
  # protect_from_forgery with: :null_session

  def index
    users = User.all
    render json: { status: "SUCCESS", message: "Loaded all users", data: users }, status: :ok
  end

  def show
    user = User.find(params[:id])
    render json: { status: "SUCCESS", message: "Loaded user", data: user }, status: :ok
  rescue ActiveRecord::RecordNotFound
    render json: { status: "ERROR", message: "User not found" }, status: :not_found
  end

  def create
    # Create a new user using the passed parameters
    @user = User.new(user_params)

    # Try saving the user
    if @user.save
      render json: { status: "SUCCESS", message: "User created successfully", data: @user }, status: :created
    else
      render json: { status: "ERROR", message: "User not created", errors: @user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    @user = User.find_by(id: params[:id])

    if @user
      if @user.update(user_params)
        render json: { status: "SUCCESS", message: "User updated successfully", data: @user }, status: :ok
      else
        render json: { status: "ERROR", message: "User not updated", errors: @user.errors.full_messages }, status: :unprocessable_entity
      end
    else
      render json: { status: "ERROR", message: "User not found" }, status: :not_found
    end
  end

  def destroy
    @user = User.find_by(id: params[:id])

    if @user
      @user.destroy
      render json: { status: "SUCCESS", message: "User deleted successfully" }, status: :ok
    else
      render json: { status: "ERROR", message: "User not found" }, status: :not_found
    end
  end


    private

    # Strong parameters to permit the attributes that can be passed
    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :phone_no, :password, :role)
    end
end
