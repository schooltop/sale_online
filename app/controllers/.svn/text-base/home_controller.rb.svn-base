class HomeController < ApplicationController
  layout "home"
  before_filter :this_tab
  def index
    session[:this_tab] = ""
    str = "state_id = #{Product::ON_STATE} and deleted is null"
    if params[:id]
      @service_style = ServiceStyle.find(params[:id])
      str += " and service_style_id = #{params[:id]}"
      session[:this_tab] = ""
    end
     @news = News.real_news.paginate :page=>params[:page], :per_page => 6
     @all_ps = Product.find(:all,:conditions=>str,:order=>"created_at Desc")
     @suggest_ps = Product.find(:all,:conditions=>str + " and is_suggest = 1 and id>17",:order=>"updated_at Desc")[0,6]
     @hot_ps = Product.find(:all,:conditions=>str + " and is_hot = 1 and id>17",:order=>"order_num Desc")[0,6]
    render :template=>"/home/category" if params[:id]
  end
  
  def jifenshop#积分商城
     str = "state_id = #{Product::ON_STATE} and deleted is null"
     @jf_ps = Product.find(:all,:conditions=>str + " and is_jf = 1",:order=>"updated_at Desc")[0,6]
     @hot_ps = Product.find(:all,:conditions=>str + " and is_hot = 1",:order=>"order_num Desc")[0,6]
  end
  
  def carender#招聘
    @cad_positions=CadPosition.find(:all,:conditions=>"hidden is null").paginate :page=>params[:page], :per_page=>3
  end
  
  def huayu
    session[:this_tab] = "huayu"
    str = "state_id = #{Product::ON_STATE} and deleted is null"
    if params[:id]
      @service_style = ServiceStyle.find(params[:id])
      str += " and service_style_id = #{params[:id]}"
      session[:this_tab] = ""
    end
     @news = News.real_news.paginate :page=>params[:page], :per_page => 6
     @all_ps = Product.find(:all,:conditions=>str,:order=>"created_at Desc")
     @suggest_ps = Product.find(:all,:conditions=>str + " and is_suggest = 1",:order=>"updated_at Desc")[0,6]
     @hot_ps = Product.find(:all,:conditions=>str + " and is_hot = 1",:order=>"order_num Desc")[0,6]
    render :layout=>"hy" if !params[:id]
    render :template=>"/home/category" if params[:id]
  end
  
  def get_home_big_picture
    @pictures = Picture.admin_pics
    render_builder_data
  end
  
  def all_news
    @news = News.all.reverse.paginate :page=>params[:page], :per_page=>10
  end
  
  def air_nav
    
  end
  
  def get_productions
    index
    @ps = @all_ps
    case params[:category_name]
    when "suggest"
      @ps = @suggest_ps
    when "hot"
      @ps = @hot_ps
    end
    @ps = @all_ps.select{|p| p.category_id == params[:category_id].to_i}.paginate :page=>params[:page], :per_page=>10 if params[:category_id]
    render_builder_data "get_productions"
  end
  
  def category
    @service_style = ServiceStyle.find(params[:id])
  end
  
  def product_detile#产品信息
    @product=Product.find(params[:id])
  end
  
  def search
    words = params[:q]
    if words == ""
      render_alert t(:q_not_empty)
      return false
    end
    @productions = Production.find(:all,:conditions=>"title like '%#{words}%'")
  end
  
  ["yiru","yichu","join_area"].each {|m| define_method(m){render :text=>t(m.to_sym),:layout=>"application"}}
  def contact_us
  end
  def huayucontact_us
    render :layout=>"hy"
  end
  
  # def contactus
      # email=Email.new
#       
      # email.save
      # Emailer.deliver_contactnew(,studentids,cad_active,subject, message)
      # return if request.xhr?
      # flash[:notice] ="邮件发送成功！"
      # redirect_to :controller=>"cad_actives",:action=>"show",:id=>(params[:cad_active_id])
  # end
#   
  def suggest_nb
       str = "state_id = #{Production::ON_STATE} and deleted is null"
       if params[:id]
         @category = Category.find(params[:id])
         str += " and category_id = #{params[:id]}"
         session[:this_tab] = ""
       end
       @suggest_ps = Production.find(:all,:conditions=>str + " and is_suggest = 1",:order=>"updated_at Desc").paginate :page=>params[:page], 
         :per_page=>18
       
  end

  ["membership","huayucompany_desc","company_desc","yihuo_forum"].each do |a|
    define_method a do 
      @menus = send "#{a}_menu"
      @news = send "#{a}_news"
      @path = session[:this_tab] = a
      @menu_id = params[:menu_id].to_i
      render :layout=>"hy" if a=="huayucompany_desc"
      render :action=>"company_desc" if a!="huayucompany_desc"
    end
  end
  
  
  
end

