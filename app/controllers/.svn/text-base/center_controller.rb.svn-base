class CenterController < ApplicationController

  before_filter :check_tab,:login_required
  layout "centers"
  def index
    session[:top_tab]=4
  end
  
  def jichang
    all(2)
  end
  
  def hotel
    all(4)
  end
  
  def speser  
    all(3)
  end
  
  def ticket
    all(5)
  end
  
   def all(style)
     orders=Order.find(:all,:conditions=>"user_id=#{session[:user_id]}")  
    @jichangs=[]
    for order in orders
      for item in order.line_items
        if item.service_style_id==style
          @jichangs<<item
        end
      end
    end 
  end
   
  def jifen
    
  end
  
  
  def permission_denied
    render :layout=>false
  end
  
  def my_yiru
    @yirus = current_user.yirus
    render :action=>"index"
  end
  
  
  def my_collections
    @productions = []
    current_user.collections.each {|c| @productions << c.production}
    render :action=>"index"
  end
  
  def delete_collection
    Collection.find_by_user_id_and_production_id(current_user.id,params[:production_id]).delete rescue nil
    render :text=>""
  end
  
  def setting_account
    self_profile
  end
  
  def self_profile
    @user_profile = current_user.user_profile || UserProfile.new
    render :template=>"/center/no_ul"
  end

  def credit_last
    @coins = Coin.find(:all,:conditions=>["user_id = ?",current_user.id]).reverse
    render :action=>"index"
  end
  
  def add_production
    @production = Production.new
    render :action=>"index"
  end
  
  
end

