class NewsController < ApplicationController
  
  before_filter :login_required,:except=>["show","list","index"]
  #before_filter :admin_required,:only=>['new','edit','update','create','destroy']
  layout "admins"

  def index
    render :layout=>"admins"
  end
  
  def newlist#后台列表
    @news=News.find(:all,:conditions=>"newsgroup_id in (1,82,83)").paginate( :page => params[:page],:per_page => 30, :order => 'convert(name using gbk)')
  end
  
  def new
    @news=News.new()
  end
  
  def edit
    @news = News.find(params[:id])
  end
  
  def show      
    @news = News.find(params[:id])
    render :layout=>"home"
  end
  
  def get_news
    show 
    render_builder_data
  end

  def create
    @news = News.new(params[:news])
    @news.publish_time = Time.new
    if @news.save
      to_news_page
    else
      render_alert t(:save_error)
    end
  end

  def update
    @news = News.find(params[:id])
    if @news.update_attributes(params[:news])
      to_news_page
    else
      render_alert t(:save_error)
    end
  end

  def delete_news
    News.find(params[:id]).delete
    to_news_page
  end
  
  def to_news_page
    redirect_to :action=>"newlist"
  end


end
