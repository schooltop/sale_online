module ControMethod
   #include PadCommon
   def this_class(s=self.controller_name)
    s.classify.constantize
   end
    
   def contro_js_text
     respond_to do |format|
     format.js {
          render :update do |page|
            #yixiedaima
          end
        }
     end
   end

  def render_alert para
    title,options = "",{}
    title = para if para.is_a?String
    options =  para if para.is_a?Hash
    unless pad_user_token
      if options[:page_to]
        render_js "window.top.location ='#{options[:page_to]}';"
      elsif options[:turn]
        render_js "alert('#{options[:turn]}');"
      else
        render_js "window.history.go(-1);alert('#{title}');"
      end
    else
        render :text=>title
    end
  end
  
  
  def insert_page partial,id="show"
        respond_to do |format|
           format.js {
             render :update do |page|
                 page.replace_html id, :partial => partial
             end
           }
       end
  end

  
  def admin_required
    user = current_user || @pad_user
          if user && user.is_admin?
            return true
          else
           render_alert t(:denied)
          end
      end
 

     def check_email_and_name email=params[:email],login=params[:login],pass=params[:password]
         boo = false
           if !check_email(email)
             render :text=>  check_email_str(email)
             return false
           end
           
           if !login || login.size == 0
               render :text=>t(:login_cant_empty)
           elsif  User.count(:all,:conditions=>"login='#{login}'") > 0
               render :text=>t(:login_used)
           elsif !pass || pass == ""
                 render :text=>t(:pass_cant_empty)
           elsif pass.size < 6
                 render :text=>t(:at_least_six)
           else
             boo = true
           end
         boo
     end
     
     def check_email email=params[:email]
         check_email_str(email) == ""
     end
     
     def check_email_str email=params[:email],login=params[:login]
       str = ""
                for c in %w(< > [ ])
                   if (email && email.index(c)) || (login && login.index(c))
                     str =  t(:name_has_vali_cha)
                   end
                 end
                 
         if !email || email.size == 0
           str =  t(:email_cant_empty)
         elsif email && !email.index('@')
           str =  t(:email_not_valid)
         elsif  User.count(:all,:conditions=>"email='#{email}'") > 0
           str =  t(:email_used)
         end
       str
     end
     
    def rand_objs objs,len=4
      ma = []
      1.upto(len) { |i| ma << objs[rand(objs.size-1)] }
      objs.size < 5 ? objs : ma
   end
   
 
  def render_js js
    render :text=>"<script>"+js+"</script>"
  end
  
  
    require 'ftools'
    def uploadFile(obj,data,num="",pic_link="/") 
      return nil if data.nil?
      bean = obj.is_a?(String) ? obj : obj.class.to_s  
      bean_id = obj.is_a?(String) ? 0 : obj.id
      path = "public/system/#{bean}s/"
      return path+"error.jpg" if data.class.to_s=="String"
      orig_name = data.original_filename 
      base_name = File.basename(orig_name, ".*")    # 取得文件名字 
      ext_name = File.extname(orig_name) # 取得文件扩展名 
      rename_filename = Time.now.strftime(bean_id.to_s + "_" + num.to_s) + ext_name
      file_path = path+rename_filename
      File.makedirs(path,true)      if !File.exist?(path)
      File.open(file_path,"wb") {|f| f.write(data.read)}
      Picture.create(:file_path=>file_path,:bean=>bean,:bean_id=>bean_id,:name=>base_name,:pic_link=>pic_link)
    end
  
  def unzip zip_file,dest_dir  
#    dest_dir = File.join dest_dir, File.basename(zip_file)  
#    rm_rf dest_dir if File.directory? dest_dir  
    Zip::ZipFile.open zip_file do |zf|  
      zf.each do |e|  
        unless e.is_directory
          path = File.join dest_dir,e.name  
          FileUtils.mkdir_p(File.dirname(path))
          zf.extract(e, path){ true }  
        end
      end  
    end  
  end
  
  
  def request_total_url
    ['action','controller'].each {|pp| params.delete(pp)}
    unless action_name=="create" || action_name=="update"
      pr = params.size > 0 ? "?"+params.to_params : ""
    else
      pr = "/"+action_name
    end
    request.path+pr
  end
  
  def add_water_mark(img,text)
    text_img = Magick::Draw.new
    text_img.annotate(img,0,0,0,0,text) do 
      self.gravity = Magick::SouthEastGravity
      self.pointsize = 14
      #self.stroke = 'black'
    end
    img
  end
  
  
  def resize_image image,options={}
     require 'RMagick'
     width = options[:width]||options[:size]
     height = options[:height]||options[:size]
     pic = Magick::Image.read(image).first
     image_hou = "_" + (options[:image_name]||"#{width}_#{height}") + "."
     re_image = image.split(".")[0] + image_hou +image.split(".")[1]
     pic.crop_resized(width,height).write(re_image) rescue nil 
  end
  
  def add_errors e
    #user_id = current_user_in_fb ? current_user_in_fb.id : nil
    #GcError.create(:error_message=>e.message)
    #nil
  end
  
  def delete_auth_code image=params[:image]
    pic=file_name_path image
    File.delete(pic) if File.file?(pic)
  end
 
  #module XmlInter
     def render_obj data,format=:xml
         if data&&(!data.is_a?Array)
          render format=>data
         elsif data.is_a?Array
          content=""
          data.each{|d| content <<  d.to_xml}
          render :xml => content
         else
          render :text=>"无相关数据"
         end
      end
      
      def render_data data,format=:xml
         if data&&data.size>0
          render format=>data
         else
          render :text=>"无相关数据"
         end
      end
      
      def render_builder_data action=action_name,option={}
        respond_to {|f|  f.xml  { render :layout=>false,:action=>action,:locals=>option}}
      end
 # end
      
    def validate_phone
        phone = params[:address][:phone]
        tel = params[:address][:tel]
        (phone && phone!="") || (tel && tel!="")
      end
      
      def check_pass_and_confirm
        login,pass,pass_c = params[:users][:login],(params[:users][:password] rescue nil),(params[:users][:password_confirmation] rescue nil)
        if login == ""
          render_alert t(:login_cant_empty)
          return nil
        elsif User.count(:all,:conditions=>"login='#{login}'") > 0
          render_alert t(:login_used)
          return nil
        elsif pass == ""
          render_alert t(:pass_cant_empty)
          return nil
        elsif pass && pass.size < 6
          render_alert t(:at_least_six)
          return nil
        elsif pass_c && (pass_c != pass)
          render_alert t(:pass_dismatch)
          return nil
        else
          true
        end
      end
      
     def search_users
        u_str,p_str,users = ["is_deleted is null and sign_from = #{current_user.id}"],[],[]
        u_str << "login like '#{params[:login]}%'" if params[:login] && params[:login] != ""
        p_str << "company like '#{params[:company]}%'" if params[:company] && params[:company] != ""
        u_sql,p_sql = u_str.join(" and "),p_str.join(" and ")
        user_profiles = UserProfile.find(:all,:conditions=>p_sql) if p_sql != ""
        users = User.find(:all,:conditions=>u_sql) if u_sql != "is_deleted is null"
        user_profiles.each {|p| users << p.user if !users.include?(p.user)} if user_profiles && user_profiles.size > 0
        @users = users.sort_by{|u| u.id}.reverse.paginate :page=>params[:page], :per_page=>40
     end
     

    def new_user_redirect ur="/self_profile"
      if current_admin
        u = "/users"
      elsif current_ywy
        u = "/accounts"
      else
        u = ur
      end
      redirect_to u
    end
    
    def center_direct ur="/centers"
       if current_admin
           redirect_to "/admin"
       elsif current_ywy
           redirect_to "/ywy"
       else
           my_yiru
       end
    end
    
    def parse_url url
      uri = URI.parse(URI.encode(url))
      http = Net::HTTP.new(uri.host, uri.port)
      http.use_ssl = true if uri.scheme == 'https'
      tmp_url = uri.path+"?"+uri.query
      request = Net::HTTP::Get.new(tmp_url)
      response = http.request(request)
      response.body
    end
    
    def get_p_price p=@production
           if p.taocans && p.taocans.size > 0
                if params[:tcid] && params[:tcid]!=""
                  tcid,@tc_num = params[:tcid].split("-")[0],params[:tcid].split("-")[1].to_i
                  @tc = Taocan.find(tcid)
                  @price = @tc.price_num
                   if @tc.production_id != p.id
                     render_alert t(:tc_error)
                   else
                     true
                   end
                else
                  render_alert t(:select_tc)
                  return false
                end
          else
            @price = @production.price
            true
          end
    end
    
    def complete_order order
               seller = order.seller
               last_num = order.seller.coins_num + order.total_price
               coin = Coin.new(:in_num=>order.total_price,:last_num=>last_num,:user_id=>seller.id,:coin_type_id=>4,:order_id=>order.id)
               if !order.sure_coin && coin.save
                 order.seller.coins_num = last_num
                 order.seller.order_num += order.amount
                 order.production.stock = order.production.stock - order.amount rescue nil
                 order.seller.save(false)
                 order.update_attributes(:state_id => 4)
                 order.production.order_num +=  1
                 order.production.save 
                 order.update_attributes(:sure_time => Time.now)
                 true
               else
                 false
               end
     end
    
    def send_sms phoneNum,text
      gb_text = text + "来自【易巴网】" + website_url
      parse_url(sms_url+"&handtel=#{phoneNum}&sendcontent=#{gb_text.to_gb}")
    end
     
end