class StoresController < ApplicationController
  
  #START:before_filter
  before_filter :find_cart, :except => :empty_cart
  #END:before_filter
  layout "login"
  
  def index
    @products = Product.find_products_for_sale
    #@production = Product.find(3)
    render :layout=>"home"
  end

  def add_to_cart
    session[:go_back]="/product/#{params[:id]}"
    begin                     
      product = Product.find(params[:id])  
    rescue ActiveRecord::RecordNotFound
      logger.error("Attempt to access invalid product #{params[:id]}")
      redirect_to_index("Invalid product")
    else
      if params[:minus]
        @current_item = @cart.add_product(product,1,0,0)
      elsif params[:amount]
        @current_item = @cart.add_product(product,0,params[:amount],params[:tedbgtime])
      else
        @current_item = @cart.add_product(product,0,0,0)
      end
      if request.xhr?
      render :text=>"<font color='#ff0000' size='5px'>#{@cart.total_price}</font>"
      else      
      redirect_to_index
      end
    end
  end

  def back
    if session[:go_back]
    redirect_to session[:go_back]
    else
    redirect_to_index("您还没有选购商品，您的购物车为空！")
    end
  end

  def empty_cart
    session[:cart] = nil
    redirect_to_index
  end

  #START:checkout
  def checkout
    if @cart.items.empty?
      redirect_to_index("您还没有选购商品，您的购物车为空！")
    else
      @order = Order.new
      render :layout=>"login"
    end
  end
  #END:checkout
  
  #START:save_order
  def save_order
    @order = Order.new(params[:order])       
    @order.user_id=session[:user_id] if session[:user_id]    
    @order.add_line_items_from_cart(@cart)
    @order.total_price=@cart.total_price
    if @order.save  
      @order.order_num="ORDER"+"0"*(7 - @order.id.to_s.length) + @order.id.to_s        
      @order.save    
      session[:cart] = nil
      redirect_to_index("您的订单已提交，客服人员将在第一时间和您取得联系。")
    else
      flash[:notice]="请核对填写信息是否正确。"
      render :action => :checkout
    end
  end
  #END:save_order
  private
  
  def redirect_to_index(msg = nil)
    flash[:notice] = msg if msg
    redirect_to :action => :index
  end
    
  # #START:find_cart
  # def find_cart
    # @cart = (session[:cart] ||= Cart.new)
  # end
  # #END:find_cart<
end
