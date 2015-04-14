module OtherMod
  # $STUDENTSYS =  StuStates.find(SYSTEM_ID)
  require 'rubygems'
  #require 'RMagick'
  #require 'rvg/rvg'
   SiteTabs = %w[this center production admin]
   include CoreExt
   include Rails::TextHelper
   include Rails::TagHelper
   
  SiteTabs.each { |m| define_method("#{m}_tab") {session["#{m}_tab".to_sym] = request.path.delete("/")} }
  
  def into_date(date)
      date.strftime('%Y-%m-%d') if date
  end

  def to_gb2312 
    begin
      self.chars.collect{|c| 
        begin
          Iconv.iconv("GB2312","UTF-8",self)[0]
        rescue 
          c
        end
      }.join
    rescue
      self
    end
   end  
   
   def to_utf8
    begin
      if self.utf8?
        self
      else
        Iconv.iconv("UTF-8//IGNORE","GB2312//IGNORE", self)[0]
      end
    rescue
      self
    end
   end   
  
    
  def ip_to_int
      ips = request.remote_ip.split(".")
      ips[0].to_i*2**24+ips[1].to_i*2**16+ips[2].to_i*2**8+ips[3].to_i
  end
      
  def into_datetime(date)
      date.strftime('%Y-%m-%d %H:%M:%S') if date
  end
  
  def scheduler
    Rufus::Scheduler.start_new
  end
  
  
  def direct_to_page url
    "window.top.location='#{url}'"
  end
  
  def admin_manage?
    (current_admin || current_ywy) && (request.path == "/new_user" || params[:admin_manage])
  end
  
  def put_rmagick_image
        canvas = Magick::Image.new(60, 25, Magick::HatchFill.new('#E6E3DC', 'lightcyan2'))   
        gc = Magick::Draw.new  
        gc.stroke('transparent')   
        gc.fill('#860000')
        gc.font("fonts/SIMHEI.TTF")
        gc.pointsize 22
        the_image = put_yanzhengma(4)
        gc.text(10, 20,the_image)   
        gc.draw(canvas)
        file_name = file_name_path the_image
        canvas.write(file_name) if !File.file?(file_name)
        File.chmod(0777, file_name) rescue nil
        the_image
  end
  
  def put_yanzhengma  len
         chars = ("a".."k").to_a + ("m".."n").to_a + ("p".."z").to_a + ("A".."H").to_a+ ("J".."N").to_a + ("P".."Z").to_a + ("1".."9").to_a
         ma = ""
         1.upto(len) { |i| ma << chars[rand(chars.size-1)] }
         ma
   end
      
   def file_name_path name
        "public/images/auth_code/#{name}.jpg"
   end
  
   def current_admin
     current_user && current_user.is_admin?
   end
   
   def current_ywy
     current_user && current_user.is_ywy?
   end
   
   def nil_html_content content,num=200
     truncate(Sanitize.clean(content, :remove_contents => ['script', 'style']),num) rescue ""
   end
   
   def picture_limit
     5
   end
   
   def picture_range
     1..picture_limit
   end
   include SomeUrl

  def is_buyer? order=@order
    order.buyer_id == current_user.id
  end
  
  def is_seller? order=@order
    order.seller_id == current_user.id
  end
   
  def company_desc_menu
    company_desc_news.collect{|n| n.name}
  end
  
  def company_desc_news
    Newsgroup.find(83).news[1,3]
  end
  
  def huayucompany_desc_menu
    huayucompany_desc_news.collect{|n| n.name}
  end
  
  def huayucompany_desc_news
    Newsgroup.find(86).news[1,3]
  end
  
  
   def membership_menu
    membership_news.collect{|n| n.name}
   end
   
   def membership_news
     Newsgroup.find(82).news[0,3]
   end
   
  def yihuo_forum_menu
    yihuo_forum_news.collect{|n| n.name}
   end
   
   def yihuo_forum_news
     Newsgroup.find(85).news[0,2]
   end
  
   def the_price p=@production
       p.price 
   end
   
   def show_price p=@production
     the_price(p) == p.price
   end
  
   def chineseNums
     {1=>"一",2=>"二",3=>"三",4=>"四",5=>"五",6=>"六",7=>"七",8=>"八",9=>"九",10=>"十",
      11=>"十一",12=>"十二",13=>"十三",14=>"十四",15=>"十五"}
   end
   
   def showPButton p=@production
     if p.is_on_line?
                       if show_price p
                           t(:buy)
                       else
                           t(:no_price)
                       end
      else
            t(:already_off_line)
      end
   end
  
  
end