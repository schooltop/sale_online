class ProductsController < ApplicationController
  # GET /products
  # GET /products.xml

  layout "admins"

  def index
    @products = Product.find(:all,:conditions=>"id>17").paginate :page=>params[:page], :per_page=>100
      render :layout =>"admins"
  end

  # GET /products/1 
  # GET /products/1.xml
  def add_comment #下单小结
    @product = Product.find(params[:id])
    @price=@product.price
    @quantity=params[:quantity]
    @vip=Vip.find(params[:vip_id]) if params[:vip_id]&&params[:vip_id]!="0"
    if @vip&&@vip.vip_style&&@vip.vip_style.vip_categry==1 #为现金储存折扣卡
    @com_price=@price.to_f*@quantity.to_i*@vip.vip_style.vipbargin
    else  
    @com_price=@price.to_f*@quantity.to_i
    end
    @i=params[:num]
    render :partial=>"change_coment"
  end
  
   
  def check_suggest#产品首页推荐
    Product.find(params[:id]).update_attributes(:is_suggest=>(params[:cancel] ? 0 : 1))
    render :text=>(params[:cancel] ? "取消推荐" : "已推荐")
  end
  
  def check_hot#产品首页热卖
    Product.find(params[:id]).update_attributes(:is_hot=>(params[:cancel] ? 0 : 1))
    render :text=>(params[:cancel] ? "取消热销" : "热销商品")
  end
  
  
  def show
    @product = Product.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @product }
      
    end
  end

  # GET /products/new
  # GET /products/new.xml
  def new
    @product = Product.new
    
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @product }
      
    end
    
  end

  # GET /products/1/edit
  def edit
    @product = Product.find(params[:id])
  end

  # POST /products
  # POST /products.xml
  def create
    @product = Product.new(params[:product])
    respond_to do |format|
      if @product.save
        update_picture 
        format.html { redirect_to(@product, :notice => 'product was successfully created.') }
        format.xml  { render :xml => @product, :status => :created, :location => @product }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @product.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /products/1
  # PUT /products/1.xml
  def update
    @product = Product.find(params[:id])
    respond_to do |format|
      if @product.update_attributes(params[:product])
        update_picture
        format.html { redirect_to(@product, :notice => 'product was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @product.errors, :status => :unprocessable_entity }
      end
    end
  end
  
  def update_picture
    picture_range.each {|i| uploadFile(@product,params["picture#{i}"],i)}
  end

  def delete_picture
     @product = Product.find(params[:pid])
     Picture.find(params[:id]).delete rescue nil
     render :partial=>"edit_picture"
  end
  

  # DELETE /products/1
  # DELETE /products/1.xml
  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    respond_to do |format|
      format.html { redirect_to(products_url) }
      format.xml  { head :ok }
    end
  end
end
