class UserProfilesController < ApplicationController
  # GET /user_profiles
  # GET /user_profiles.xml
  before_filter :check_tab,:login_required
  #before_filter :check_province_and_city,:only=>['new','edit']
  #before_filter :auth_profile_user,:only=>['new','edit','show','update']
  def index
    @user_profiles = UserProfile.all
  end
  
  def show
    
  end
  
  def auth_profile_user
    if current_user.is_admin?
      @user_profile = params[:id] ? UserProfile.find(params[:id]) : current_user.user_profile
    else
      @user_profile = current_user.user_profile || UserProfile.new
    end
  end

  # GET /user_profiles/new
  # GET /user_profiles/new.xml
  def new
   @user_profile=UserProfile.new
   render :layout => "centers"
  end

  # GET /user_profiles/1/edit
  def edit
   if current_user.user_profile
   @user_profile=current_user.user_profile
   else
   @user_profile=UserProfile.new
   end
   render :layout => "centers"
  end

  # POST /user_profiles
  # POST /user_profiles.xml
  def create
    @user_profile = UserProfile.new(params[:user_profile])
     @user_profile.user_id = current_user.id if !current_user.is_admin?
    # update_address
      if @user_profile.save
#        resize_head_pic @user_profile.image.url
        redirect_to("/centers") 
      else
        render :action => "new" 
      end
  end

  # PUT /user_profiles/1
  # PUT /user_profiles/1.xml
  def update
      if current_user.user_profile
       @user_profile=UserProfile.find(params[:id])
       @user_profile.update_attributes(params[:user_profile])
       flash[:notice]= t(:edit_profile)
       else
       @user_profile = UserProfile.new(params[:user_profile])
       @user_profile.user_id = current_user.id if !current_user.is_admin?
       @user_profile.save
       flash[:notice]=  t(:new_profile)
       end
       redirect_to(:action=>"edit") 
  end
  
  def update_address
    if action_name == "create"
      address = Address.create(params[:address])
    else
      address = current_user.address
      address.update_attributes(params[:address]) rescue nil
    end
    if address
      is_default = action_name == "create" ? 1 : nil
      address.update_attributes(:creater_id => current_user.id,:address_user_name=>@user_profile.contact,:is_default=>is_default)
      @user_profile.address_id = address.id
    end
  end

  # DELETE /user_profiles/1
  # DELETE /user_profiles/1.xml
  def destroy
    @user_profile = UserProfile.find(params[:id])
    @user_profile.destroy

    respond_to do |format|
      format.html { redirect_to(user_profiles_url) }
      format.xml  { head :ok }
    end
  end
  
  def resize_head_pic image
    resize_image (RAILS_ROOT + "/public" + image).split("?")[0],:size=>50,:image_name=>"50" if image && image!='/images/avatar.gif'
  end
end
