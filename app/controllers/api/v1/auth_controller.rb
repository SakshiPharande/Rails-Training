class Api::V1::AuthController < ApplicationController
  skip_before_action :authenticate_request

  # def login
  #   # Log the incoming request
  #   logger.debug "Login attempt with email: #{params[:email]}"

  #   @user = User.find_by(email: params[:email])

  #   if @user
  #     logger.debug "User found: #{@user.email}"

  #     # Manually authenticate by comparing passwords
  #     if @user.password == params[:password]  # Compare plaintext passwords
  #       logger.debug "Password correct for user: #{@user.email}"

  #       # Generate JWT token
  #       token = jwt_encode(user_id: @user.id)

  #       logger.debug "JWT token generated for user: #{@user.email}"

  #       render json: { token: token, message: "Login successful" }, status: :ok
  #     else
  #       logger.debug "Authentication failed for user: #{@user.email} with the provided password"
  #       render json: { error: "Invalid email or password" }, status: :unauthorized
  #     end
  #   else
  #     logger.debug "No user found with the email: #{params[:email]}"
  #     render json: { error: "Invalid email or password" }, status: :unauthorized
  #   end
  # end

  def login
    @user = User.find_by(email: params[:email])
    if @user
      if @user.password == params[:password]
        token = jwt_encode(user_id: @user.id)
        render json: { token: token, message: "Login successful" }, status: :ok
      else
        render json: { error: "Invalid email or password" }, status: :unauthorized
      end
    else
      render json: { error: "Invalid email or password" }, status: :unauthorized
    end
  end
end
