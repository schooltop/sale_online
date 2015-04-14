module SomeUrl
 
  def website_url
    "http://www.yibar.com"
  end
  
  def final_url url
    url = url.include?("http") ? url : website_url+url
  end
  
  def get_ip_url ip
    #"http://www.youdao.com/smartresult-xml/search.s?type=ip&q=#{ip}"
    "http://whois.pconline.com.cn/ip.jsp?ip=#{ip}"
  end
  
  def sms_url 
    "http://api.56dxw.com/sms/HttpInterface.aspx"+
    "?comid=436&username=zhaowenhui&userpwd=330gjc1u&smsnumber=10690"
  end
 
end