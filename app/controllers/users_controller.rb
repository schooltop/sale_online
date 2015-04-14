class UsersController < ApplicationController
  # Be sure to include AuthenticationSystem in Application Controller instead 
  # layout 'user_profiles'
 before_filter :check_tab
   include AuthenticatedSystem
  # before_filter :admin_required, :only => [:suspend, :unsuspend, :destroy, :purge ,:password_send]
  # before_filter :find_user, :only => [:suspend, :unsuspend, :destroy, :purge]
  # skip_before_filter :track_user,:only=>['create']
  # render new.rhtml
    
    def index
      @users = User.find(:all,:conditions=>"is_deleted is null",:order=>"id desc").paginate :page=>params[:page], :per_page=>10
      render :layout=>"admins"
    end
    
    def show_trackers
      @trackers = Tracker.find(:all,:conditions=>"user_id = #{params[:user_id]}").paginate :page=>params[:page], :per_page=>40
      @user = User.find(params[:user_id])
    end    
    
  def user_search
    if params[:name]&&params[:name]!=""
      user=User.find(:last,:conditions=>"name='#{params[:name]}' or email='#{params[:name]}'")
      if user
        flash[:notice] = "你好，以下是查询相关用户信息，请核对后办卡。"
        redirect_to :action=>"new",:user_id=>user.id
      else
        flash[:notice] = "你好，该用户#{params[:name]}不存在，请确认用户帐号是否准确。"
        redirect_to :action=>"new"
      end        
    elsif params[:email]&&params[:email]!=""
      user=User.find_by_email(params[:email])
      if user
        flash[:notice] = "你好，该用户#{params[:email]}已经存在"
        redirect_to :action=>"new"
      else
        user=User.new
        user.email=params[:email]
        user.name=params[:user_name]
        user.coins_num=0
        user.save  
        flash[:notice] = "你好，以下是新建用户相关信息，请核对后办卡。"
        redirect_to :action=>"new",:user_id=>user.id
      end  
    end
  end

  def new
    @user = User.new
    render :layout=>"login"  
  end
  
  def show
    @user=User.find(params[:id])
    @vips = Vip.find(:all,:conditions=>"be_delete is null").paginate :page=>params[:page], :per_page=>40
    render :layout=>"admins" 
  end
  
    def mark_users
         unless params[:marks].nil?
                      case params[:form_action]
                      when t(:delete)
                        params[:marks].each {|id| 
                          user = User.find(id)
                          user.is_deleted = 1
                          user.save(false)}
                          to_manage_page
                      when t(:on_sign)
                        params[:marks].each {|id| UserProfile.find_by_user_id(id).update_attributes(:is_sign=>1)}
                        to_manage_page
                      when t(:off_sign)
                        params[:marks].each {|id| UserProfile.find_by_user_id(id).update_attributes(:is_sign=>nil)}
                        to_manage_page
                      when t(:add_coins)
                        @users,is_sign = [],false
                          params[:marks].each {|id| @users << User.find(id) 
                            is_sign = true if !User.find(id).signed?}
                            is_sign ? (render_alert t(:not_signed_user)) : (render :template=>"/coins/add_coins")
                      end
          else
                render_alert t(:select_least_one)
          end
  end
  
  def to_manage_page
    redirect_to :action=>"index"
  end
 
  def create
    if params[:users][:password] == ""
          render_alert t(:pass_cant_empty)
          return nil
        elsif params[:users][:password].size < 6
          render_alert t(:at_least_six)
          return nil
        elsif params[:users][:password_confirmation] != params[:users][:password]
          render_alert t(:pass_dismatch)
          return nil
        end
    logout_keeping_session!
    @roles = Role.find(:all)
    @user = User.new(params[:users])
    @user.register! if @user && @user.valid?
    if params[:users][:password_confirmation] != params[:users][:password]
      render_alert t(:pass_mismatch)
      return nil
    end
    success = @user && @user.save
    if success && @user.errors.empty?
      @user.save(false)
      user_profile=UserProfile.new
      user_profile.user_id=@user.id
      user_profile.save
      session[:user_id]=@user.id
      flash[:notice] = t(:thank_for_sign)
      redirect_to :controller=>"user_profiles",:id=>user_profile.id,:action=>"edit"
    else
      flash[:notice]  = t(:sign_error)
      render :action => 'new'
    end
  end
  def check
    for c in %w(< > [ ])
      if params[:email] && params[:email].index(c)
        render :text=> t(:name_has_vali_cha)
        return
      end
    end
    
    if !params[:email] || params[:email].size == 0
      render :text=>t(:email_cant_empty)
      return
    end    
    
    if params[:email] && (!params[:email].index('@') || !params[:email].index('.'))
      render :text=>t(:email_not_valid)
      return 
    end  
    
    if User.count(:all,:conditions=>"email='#{params[:email]}'") > 0
      render :text=>t(:email_used)
    else
      render :text=>"√"
    end
  end

  def checklogin
    if params[:login]==""
      render :text=> "用户名不能为空！"
      return
    end

    if User.count(:all,:conditions=>"login='#{params[:login]}'") > 0
      render :text=>"已被使用！"
    else
      render :text=>"√"
    end
  end
  
  def activate
    logout_keeping_session!
    user = User.find_by_activation_code(params[:activation_code]) unless params[:activation_code].blank?
    case
    when (!params[:activation_code].blank?) && user && !user.active?
      user.activate!
      flash[:notice] = "恭喜你注册并激活成功!"
      self.current_user = @current_user =  user
    when params[:activation_code].blank?
      flash[:error] = "激活码丢失. 激活失败"
      redirect_back_or_default('/')
    else 
      flash[:error]  = "没有找到此用户，请检查您的邮件链接? 或者您已经激活此帐户 ."
      redirect_back_or_default('/')
    end
  end

  def suspend
    @user.suspend! 
    redirect_to users_path
  end

  def unsuspend
    @user.unsuspend! 
    redirect_to users_path
  end

  def destroy
    @user.delete!
    redirect_to users_path
  end

  def purge
    @user.destroy
    redirect_to users_path
  end

   def change_password
     render :layout =>"centers"
      return unless request.post?
      if User.authenticate(current_user.email, params[:old_password])
        if ((params[:user][:password]!="" && params[:user][:password_confirmation]!="") && 
                 params[:user][:password_confirmation] == params[:user][:password])
          current_user.password_confirmation = params[:user][:password_confirmation]
          current_user.password = params[:user][:password]
          if current_user.save!
            flash[:notice] = "密码更新成功" 
            #redirect_to profile_url(current_user.login)
            #redirect_back_or_default('/centers')
          else
            render_alert "密码更新失败" 
          end

        else
          render_alert t(:pass_mismatch) 
          @old_password = params[:old_password]
        end
      else
        render_alert "旧密码填写错误" 
      end
      
    end

    #gain email address
    def forgot_password
      return unless request.post?
      if @user = User.find_by_email(params[:user][:email])
        @user.forgot_password
        @user.save!
        redirect_back_or_default('/')
        render_alert "修改密码的链接已经发送至您的邮件！" 
      else
        render_alert "没有找到此用户，请重新输入邮件" 
      end
    end

    #reset password
    def reset_password
      @user = User.find_by_password_reset_code(params[:id])
       if !@user || params[:id].nil?
         render_alert "重置码丢失"
         return false
      end

      if ((params[:user][:password]!="" && params[:user][:password_confirmation]!="") && 
           params[:user][:password_confirmation] == params[:user][:password])
        @user.password_confirmation = params[:user][:password_confirmation]
        @user.password = params[:user][:password]
        @user.reset_password
        if @user.save(false)
          self.current_user = @user 
          redirect_back_or_default('/centers')
        else
          render_alert "密码重置失败."
        end 
      else
        render_alert t(:pass_mismatch) 
      end  
    end
    
    def show_email
      @user = current_user
      @url = website_url
      render :template=>"/user_mailer/#{params[:tem]}",:layout=>"examples"
    end
    def password_send
      return unless request.post?
      #@user_ids=params[:user_ids]
      @users = User.find(:all,:conditions=>"id < #{params[:end_id]} and id > #{params[:start_id]}")
      @users.each do |user|
        # user.forgot_password
        # user.save(false)
        # UserMailer.send("deliver_#{params[:mail_type]}",user) if params[:mail_type] && user.email_is_useful?
        if params[:mail_type] && user.email_is_useful?
          case params[:mail_type]
          when "signup_notification"
          UserMailer.deliver_signup_notification(user) 
          when "activation"
          UserMailer.deliver_activation(user) 
          when "forgot_password"
          UserMailer.deliver_forgot_password(user) 
          when "reset_password"
          UserMailer.deliver_reset_password(user) 
          end
        end
      end
      @message="邮件已发送成功！"
      flash[:notice]=@message
    end
    def new_user
      @email = params[:email]
    end
    def new_user_password
      @user=User.find_by_email(params[:users][:email])
      if ((params[:users][:password] && params[:users][:password_confirmation]) && 
                              !params[:users][:password_confirmation].blank?)
          @user.password_confirmation = params[:users][:password_confirmation]
          @user.password = params[:users][:password]
          @user.save
          current_user = @user
          redirect_to ('/centers')
      else
        redirect_to "/new_user?email=#{params[:users][:email]}"
        flash[:notice] = t(:pass_mismatch) 
      end
     
    end
  
  # There's no page here to update or destroy a user.  If you add those, be
  # smart -- make sure you check that the visitor is authorized to do so, that they
  # supply their old password along with a new one to update it, etc.

protected
  def find_user
    @user = User.find(params[:id])
  end

end
