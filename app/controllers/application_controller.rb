# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details
  include AuthenticatedSystem
  before_filter :set_language
  include OtherMod
  include ControMethod
  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
  
   #START:find_cart
  def find_cart
    @cart = (session[:cart] ||= Cart.new)
  end
  #END:find_cart
  
  def authorize       
       unless User.find(session[:user_id]).permission_urls.include?("/"+ self.class.controller_path + "/" + self.action_name ) 
         render_alert  "您没有该权限"
      end  
  end  
  
  
  def login_required
      if current_user
        if current_user.user_profile && current_user.address
          return true
        end
      else
        flash[:notice]= t(:login_first)
        session[:return_to]=request.request_uri
        redirect_to :controller => "login"
        return false 
      end
  end 
  
   # def dxapi(@handtel,@sendcontent)
     # "http://jiekou.56dxw.com/sms/HttpInterface.aspx?
    # comid=61&username=test106&userpwd=qwe23&handtel=13436656799&sendcontent=您的验证码是26325【56短信网】&sendtime=&smsnumber=10690"
   # end
  
  def parse_url (url)
    uri = URI.parse(URI.encode(url))
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true if uri.scheme == 'https'
    tmp_url = uri.path+"?"+uri.query
    request = Net::HTTP::Get.new(tmp_url)
    response = http.request(request)
    response.body
  end
  
  def check_tab
    air_table=%w[objectservice vipfastservice service servicetow foodservice timehotelservice meetingservice ]
    tese_table=%w[bodystyleservice secretaryservice objectservicethird safeservice objectservicethird ]
    if air_table.include?request.path.delete("/")
    session[:top_tab]=2
    elsif tese_table.include?request.path.delete("/")
    session[:top_tab]=1 
    elsif request.path.delete("/")=="overview"
    session[:top_tab]=3
    elsif request.path.delete("/")=="discription"
    session[:top_tab]=0
    elsif request.path.delete("/")=="centers"
    session[:top_tab]=4
    else
    session[:top_tab]=nil
    end
  end
   
  def set_language
        #china = current_user && current_user.is_chinese?
        I18n.locale = "zh_CN"
  end
    
  def render_alert title
      render :text=>"<script>window.history.go(-1);alert(\"#{title}\");</script>"
  end
     
 
  def check_province_and_city
    if current_user
      # @address = Address.find(1)
      if params[:province_id] 
        @cities = Province.find(params[:province_id]).cities
        @areas = @cities[0].areas
        render :partial=>"select_city"
      elsif params[:city_id] 
        @areas = City.find(params[:city_id]).areas
        render :partial=>"select_area_child"
      else
        @address = action_name == "edit_add" ? Address.find(params[:id]) : current_user.address
        if @address
          @cities = Province.find(@address.province_id).cities
          @areas = City.find(@address.city_id).areas
        else
          @cities = Province.find(1).cities
          @areas = City.find(2).areas
        end
      end
     else
       redirect_to "/login"
     end
  end
      
end
