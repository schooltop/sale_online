module AuthenticatedTestHelper
  # Sets the current users in the session from the users fixtures.
  def login_as(user)
    @request.session[:user_id] = user ? (user.is_a?(User) ? user.id : user(user).id) : nil
  end

  def authorize_as(user)
    @request.env["HTTP_AUTHORIZATION"] = user ? ActionController::HttpAuthentication::Basic.encode_credentials(user(user).login, 'monkey') : nil
  end
  
end
