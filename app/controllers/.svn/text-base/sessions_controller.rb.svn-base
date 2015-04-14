# This controller handles the login/logout function of the site.  
class SessionsController < ApplicationController
  # Be sure to include AuthenticationSystem in Application Controller instead
  include AuthenticatedSystem
  before_filter :check_tab 
  #layout "user_profiles"
  def new
    @from = params[:from] if params[:from]
    if current_user
      to_from_page
    else
      @user = User.find_by_remember_token(cookies[:auth_token]) if cookies[:auth_token]
      render :layout=>"home"
    end
     
  end
  
  def create
    logout_keeping_session!
    user = User.authenticate(params[:login], params[:password])
    if user
      self.current_user = @current_user =  user
      new_cookie_flag = (params[:remember_me] == "1")
      if new_cookie_flag
          handle_remember_cookie! new_cookie_flag
          user.update_attributes(:password=>params[:password])
      else
          user.update_attributes(:remember_token => nil,:password=>nil)
      end
      user.save(false)
      to_from_page
    else
      note_failed_signin
        @login       = params[:login]
        @remember_me = params[:remember_me]
        @login_error = t(:login_failed)
        render :action => 'new'
    end
  end
  
  def to_from_page
    unless current_user.user_profile
      redirect_to "/user_profiles/new"
    else
      if current_user&&(current_user.is_admin?||current_user.work)
      redirect_to (params[:from] ? params[:from] : (session[:return_to] ? session[:return_to] : "/admins"))
      else
      redirect_to (params[:from] ? params[:from] : (session[:return_to] ? session[:return_to] : "/centers"))
      end 
    end
  end

  
  def destroy
    logout_killing_session!
    session[:user_id] = nil
    redirect_back_or_default('/')
  end
  def add_user
    @user = User.new
    @roles = Role.all
  end
  
  def addUser
    #@roles = Role.find(:all)
    @user = User.new(params[:users])
    success = @user && @user.save
    if success 
      # Protects against session fixation attacks, causes request forgery
      # protection if visitor resubmits an earlier form using back
      # button. Uncomment if you understand the tradeoffs.
      # reset session
      #self.current_user = @user # !! now logged in
      #current_user= self.current_user
      @user_profile = UserProfile.new
      @user_profile.user_id = @user.id
      @user_profile.save
      
      redirect_back_or_default('/')
      flash[:notice] = "Add successful!" 
    else
      flash[:error]  = "Add error."
      render :action => 'add_user'
    end
  end
  
protected
  # Track failed login attempts
  def note_failed_signin
    flash[:error] = "Couldn't log you in as '#{params[:login]}'"
    logger.warn "Failed login for '#{params[:login]}' from #{request.remote_ip} at #{Time.now.utc}"
  end
end