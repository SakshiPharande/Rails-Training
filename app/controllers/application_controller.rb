class ApplicationController < ActionController::API
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  # allow_browser versions: :modern

  include JsonWebToken

  before_action :authenticate_request

  private
    def authenticate_request
      header = request.headers["Authorization"]
      token = header.split(" ").last if header
      decoded = jwt_decode(token)
      @current_user = User.find(decoded[:user_id])
    end
end
