
class Emailer < ActionMailer::Base
       
   #联系我们邮件
   def contactnew(recipient,subject, sent_at = Time.now)
      @subject = subject   #标题
      @recipients = recipient  #接收者
      @from ='career@ccer.edu.cn'   #发邮件人
      @sent_on = sent_at  #发送时间
      @body["message"] = "尊敬的用户，感谢您的来信，我们将在24小时内给予你回复。"#信息
      @headers = {}     
   end   

end

