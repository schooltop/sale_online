class UserMailer < ActionMailer::Base
  Templates = {"注册通知"=>"signup_notification","激活"=>"activation","忘记密码"=>"forgot_password",
              "重置密码"=>"reset_password","每日更新内容"=>"send_today_content"}
  def signup_notification(user)
    setup_email(user)
    @subject    += 'Please activate your new account'
  
    @body[:url]  = "http://www.goodchinese.com/activate/#{user.activation_code}"
  end
  
  def activation(user)
    setup_email(user)
    @subject    += 'Your account has been activated!'
    @body[:url]  = "http://www.goochinese.com/"
  end

  def forgot_password(user)
    setup_email(user)
    @subject    += 'You have requested to change your password'
    @body[:url]  = "http://www.goodchinese.com/reset_password/#{user.password_reset_code}" 
  end

  def reset_password(user)
    setup_email(user)
    @subject    += 'Your password has been reset.'
  end
 
  protected
    def setup_email(user)
      @recipients  = "#{user.email}"
      @from        = "admin@goodchinese.com"
      @subject     = "[goodchinese.com] "
      @sent_on     = Time.now
      @body[:user] = user
      @content_type= "text/html"
    end
end
