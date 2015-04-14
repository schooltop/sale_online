class OrdersController < ApplicationController
  # GET /orders
  # GET /orders.xml
  auto_complete_for :product, :title
  
  layout "admins"
  def index
    @orders = Order.find(:all,:conditions=>"be_delete is null", :order =>'convert(created_at using gbk)desc').paginate :page=>params[:page], :per_page=>40
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @orders }
    end
  end
  
  def oldorders
    @orders = Order.find(:all,:conditions=>"be_delete is null").paginate :page=>params[:page], :per_page=>40
  end

  def admin_new_order#店员前台创建客户订单页面
  @vip=Vip.find(params[:vip_id].to_i)  if params[:vip_id]
  @user=User.find(params[:user_id].to_i)  if params[:user_id]
  @order = Order.new  
  if current_user.is_admin?
  @works=Work.find(:all,:conditions=>"company_id is not null",:order=>"company_id")   
  else
  @works=Work.find(:all,:conditions=>"company_id=#{current_user.work.company_id}") 
  @company=current_user.work.company 
  end
  
  @products=Product.find(:all,:conditions=>"parent_id=6")
  @lproducts = []
     for lproduct in @products
       if lproduct.children!=[]
         @lproducts+=Product.find(:all,:conditions =>"parent_id = #{lproduct.id}",:order => 'convert(title using gbk)')
       end
     end  
  end


  def check_or_create_user
    if params[:vip_no]&&params[:vip_no]!=""
        @vip=Vip.find_by_vip_num(params[:vip_no])
        if @vip
          @user=@vip.user
          redirect_to :action=>"admin_new_order",:vip_id=>@vip.id,:user_id=>@user.id
        else
          flash[:notice] = '查询没有此VIP号码'
          redirect_to :action=>"admin_new_order"
        end
    elsif params[:user_email]&&params[:user_email]!=""  
        @user=User.find_by_email(params[:user_email])
        if @user
          redirect_to :action=>"admin_new_order",:user_id=>@user.id
        else
          flash[:notice] = '查询没有此用户号码'
          redirect_to :action=>"admin_new_order"
        end
    elsif  params[:email]&&params[:email]!=""       
        @user=User.new
        @user.name=params[:name]
        @user.login=params[:email]
        @user.email=params[:email]
        @user.save
        user_profile=UserProfile.new
        user_profile.user_id=@user.id
        user_profile.contact=params[:name]
        user_profile.gender=params[:gender]
        user_profile.email=params[:email]
        user_profile.idcar_style="#{params[:idcar_style]}"
        user_profile.idcar_num=params[:idcar_num]
        user_profile.tel_num=params[:tel]
        user_profile.save
        redirect_to :action=>"admin_new_order",:user_id=>@user.id
    end
  end


  # GET /orders/1
  # GET /orders/1.xml
  def show
    @order = Order.find(params[:id])
    @line_items=@order.line_items.paginate :page=>params[:page], :per_page=>40
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @order }
    end
  end

  # GET /orders/new
  # GET /orders/new.xml
  def products_search#商品累心搜索
    sql = ""
    @cad_contacts1 = Array.new
    name = params[:name] unless params[:name].nil?
    name_ent = params[:name_ent] unless params[:name_ent].nil?
    name_com =  params[:name_com] unless  params[:name_com].nil?
    user_id = params[:post][:user_id] unless params[:post][:user_id].nil?
    tel = params[:tel] unless params[:tel].nil? 
    website= params[:website] unless params[:website].nil? 
    email= params[:email] unless params[:email].nil? 
    city_id = params[:post][:city_id] unless params[:post][:city_id].nil?
    
    unless name.nil? || name.empty?
      sql += "  and name like '%#{name}%' "
    end  
    
    unless name_ent.nil? || name_ent.empty?
      sql += "  and name like '%#{name_ent}%' "
    end         
    
    unless city_id.nil? || city_id.empty?
      sql += " and city_id = '#{city_id}' "
    end 
    
    unless user_id.nil? || user_id.empty?
      sql += " and user_id = #{user_id} "
    end 
    
    unless tel.nil? || tel.empty? 
      sql += " and tel = '#{tel}' "
    end    
    
    unless website.nil? || website.empty? 
      sql += " and website = '#{website}' "
    end 
    
      unless email.nil? || email.empty? 
      sql += " and email = '#{email}' "
    end 
    
    @cad_contactss= CadContact.find_by_sql("select * from cad_contacts where id is not null #{sql} ")
      
    @cad_contacts = @cad_contactss.paginate( :page => params[:page],:per_page => 230, :order =>'convert(created_at using gbk)desc',:order => 'convert(name using gbk)')
  
  end
  
  
  
  def new
    if params[:user_id]
      @user=User.find(params[:user_id])
    end
    @order = Order.new
    @newiteam=params[:iteambean].constantize.find(params[:bean_id])
    @product=@newiteam.product
    
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @order }
    end
  end

  # GET /orders/1/edit
  def edit
    @order = Order.find(params[:id])
  end

  def admin_create
    if !params[:user_id]||params[:user_id]=="0"
      flash[:notice] = '请先选择或创建一个用户！'
      redirect_to :action=>"admin_new_order"
    else
    @user=User.find(params[:user_id])
    @order = Order.new
    @order.user_id=@user.id
    @order.work_user_id=current_user.id
    @order.name=@user.name
    @order.email=@user.email
    @order.tel=@user.user_profile.tel_num
    @order.has_pay_id=1
    @order.state_id=1
    @order.save #生成订单      
    @total_price=0
     for i in 1..10
       a="work"+i.to_s
       c="spa"+i.to_s
       d="description"+i.to_s
       f="fromtime"+i.to_s
       t="totime"+i.to_s
       q="quantity"+i.to_s
       p="price"+i.to_s
       pro="product_id"+i.to_s
       if params[q]&&params[q][0].to_i>0&&params[pro]
        @total_price=@total_price+ params[p].to_f
        product=Product.find(params[pro][0].to_i) 
        li=LineItem.new()#记录到购物单
        li.order_id= @order.id
        li.comfrom="店面" 
        li.product_id = product.id
        li.service_id =product.service_id
        li.service_style_id=product.service_style_id
        li.quantity    = params[q][0]
        li.price     = product.price
        li.total_price = params[p]
        li.totime = params[t]
        li.fromtime= params[f]
        li.save
      #newiteam=params[:iteambean].constantize.find(params[:bean_id])
      #资源使用状态改变
      if params[:form_state]=="spas"
      newiteam=Spa.find(params[c][0].to_i)
      newiteam.situation_id=6
      newiteam.save
      end
        @service_task = ServiceTask.new
        @service_task.order_id=@order.id
        @service_task.user_id=current_user.id
        @service_task.situation_id=3
        @service_task.description="店面消费现场分配业务"
        @service_task.line_item_id=li.id
        @service_task.save
        @service_task.task_num="TASK"+"0"*(7 - @service_task.id.to_s.length) + @service_task.id.to_s
        @service_task.save
         task_entries=TaskEntry.new
         task_entries.service_task_id=@service_task.id
         task_entries.user_id=current_user.id#记录人
         task_entries.work_id=params[a][0].to_i
         task_entries.company_id=params[c][0].to_i
         task_entries.description=params[d].to_s
         task_entries.commission_style_id=2
         task_entries.commission_config_id=Commission.find(:last,:conditions=>"commission_style_id=2")
         task_entries.save
         
         material_task=MaterialTask.new
         material_task.service_task_id=@service_task.id
         material_task.amodel="Spa"
         material_task.emodel="spa"
         material_task.action_id=params[c][0].to_i
         material_task.user_id=current_user.id
         material_task.task_entry_id=params[d].to_s
         material_task.save
       end
     end
     
     @order.update_attributes(:order_num=>"ORDER"+"0"*(7 - @order.id.to_s.length) + @order.id.to_s,:total_price=>@total_price)
     if params[:vip_id]!="0"
       redirect_to :action=>"check_order_show",:order_id=>@order.id,:vip_id=>params[:vip_id]
     else
       redirect_to :action=>"check_order_show",:order_id=>@order.id  
     end
     
     end
  end


  def check_order_show
    @vip=Vip.find(params[:vip_id]) if params[:vip_id]  #根据vip类型做兑换或余额消费展示
    @order=Order.find(params[:order_id].to_i)
  end


  def check_admin_order     
    @order=Order.find("#{params[:order_id]}".to_i)
    if params[:vip_id]
       @vip=Vip.find("#{params[:vip_id]}".to_i) 
      if params[:vip_replace_price] 
       @vip.update_attributes(:leave_money=>@vip.leave_money-params[:vip_replace_price])
       @order.update_attributes(:vip_money=>params[:vip_replace_price].to_f)
      # elsif params[:vip_replace_time] 
       # for line_item in @order.line_items
       # @vip_record=VipRecord.new
       # @vip_record.user_id=@vip.user_id
       # @vip_record.vip_service_id
       # @vip_record.timenum=line_item.quantity
       # @vip_record.point="次"
       # @vip_record.input_user_id=current_user.id
       # @vip_record.from_time=line_item.fromtime
       # @vip_record.to_time=line_item.totime
       # @vip_record.order_id=params[:order_id]
       # @vip_record.line_item_id=line_item.id
       # @vip_record.save 
       # end
      end
    end    
       @order.update_attributes(:pay_type=>params[:order][:pay_type],:leave_message=>params[:order][:leave_message],:total_price=>params[:order][:total_price],:state_id=>5)
       check_paytype      
  end


  def check_paytype #检查支付方式
    @paytype="#params[:order][:pay_type]"
    if @paytype=="VIP卡"&&@vip
      @order.update_attributes(:has_pay_id=>4)
      redirect_to :action=>"print_order",:order_id=>@order.id,:paytype=>@paytype,:vip_id=>@vip.id
    elsif @paytype=="现金"
      @order.update_attributes(:has_pay_id=>2)
      redirect_to :action=>"print_order",:order_id=>@order.id,:paytype=>@paytype
    elsif @paytype=="刷卡"
      @order.update_attributes(:has_pay_id=>5)
      redirect_to :action=>"print_order",:order_id=>@order.id,:paytype=>@paytype
    elsif @paytype=="签单"
      @order.update_attributes(:has_pay_id=>6)
      redirect_to :action=>"print_order",:order_id=>@order.id,:paytype=>@paytype
    end
    
  end
  
  
  
  def send_vip_dh_message#VIP短信消费回执发送
    if params[:dh]
    user=User.find(params[:user_id].to_i) 
    if params[:vipconsumnum_text]
      vipconsumnum=Vipconsumno.find(:last,:conditions=>"user_id=#{user.id}")
      if vipconsumnum
        if vipconsumnum.situation
              render :text => "<button type='submit' class='button' style='border:0px'><img src='/images/center/dh.png' /></button>回执短息已过期！请再次点击兑换。" 
        elsif params[:vipconsumnum_text]==vipconsumnum.num
           vipconsumnum.situation=1      
           vipconsumnum.save                      
             @order = Order.find(params[:order_id].to_i)       
             for vip_service in VipService.all#加VIP消费记录
              str="dh"+vip_service.id.to_s 
                if params[str]                                                    
                  vip_record=VipRecord.new
                  vip_record.user_id=user.id
                  vip_record.point="次"
                  vip_record.vip_service_id=vip_service.id
                  vip_record.order_id=@order.id
                  vip_record.timenum=params[str][1].to_i
                  vip_record.vipconsumno_id=vipconsumnum.id
                  vip_record.line_item_id=params[str][0].to_i
                  vip_record.save                    
                end
              end                       
              flash[:notice]="您的订单已提交，请确认以下信息。"
              redirect_to :controller=>"show_vip_dh",:order_id=>@order.id#原单总数显示，vip兑换显示。计算出相应价钱，处理后调用支付方式联系信息更新页面。
                              
        else
           render :text => "<input type='text' name='vipconsumnum_text'><button type='submit' class='button' style='border:0px'>
                          <img src='/images/center/dh.png' />
                         </button>您的短信回执码不正确，请确认。"                  
        end
      end
    else
    i=0
    for vip_service in VipService.all
      str="dh"+vip_service.id.to_s 
      if params[str]&&user.one_vip_service(vip_service.id)
        all_service_dh=0
        for timenum in params[str]
          all_service_dh=all_service_dh+timenum[1].to_i
        end 
         a=user.one_vip_service(vip_service.id)
        if a<all_service_dh
            flash=flash+"超出#{vip_service.description}可兑换范围。"
            i=1
        end       
      end      
    end
   if i==1
     redirect_to :controller=>"stores"
   else
     frandnum=rand(9)*10000+rand(10000)
     randnum=frandnum.to_s+"0"*(5 - frandnum.to_s.length)
     vipconsumnum=Vipconsumno.new
     vipconsumnum.num=randnum
     vipconsumnum.user_id=user.id
     vipconsumnum.save
     mysendcontent="尊敬的客户您好，以下是您在T2MAX的消费回执码请及时使用"+randnum+"【WWW.T2MAX.COM】" 
     returnnum=parse_url("http://api.56dxw.com/sms/HttpInterface.aspx?comid=436&username=zhaowenhui&userpwd=330gjc1u&handtel=13681633228&sendcontent=#{mysendcontent.to_gb2312}&sendtime=&smsnumber=10690")
     if returnnum=="1"
       render :text => "<input type='text' name='vipconsumnum_text'><button type='submit' class='button' style='border:0px'>
                          <img src='/images/center/dh.png' />
                         </button>请输入短息回执码！"  
     else
       render :text => "<button type='submit' class='button' style='border:0px'>
                          <img src='/images/center/dh.png' />
                         </button>回执短息没有发送成功！请再次点击兑换。" 
     end      
   end 
   end
   else
     render :text => "<button type='submit' class='button' style='border:0px'>
                          <img src='/images/center/dh.png' />
                         </button>您没有相关兑换选项！" 
   end
  end
  
  
  def show_vip_dh
    @order=Order.find(params[:order_id].to_i)
  end
  
  
  def print_order
   @vip=Vip.find(params[:vip_id].to_i) if params[:vip_id]
   @order=Order.find(params[:order_id].to_i) 
   @paytype=params[:paytype]
   render  :layout=>false
  end
  # POST /orders
  # POST /orders.xml
  def create
    @order = Order.new(params[:order])
    product=Product.find(params[:line_item][:product_id])
    @order.total_price=product.price*params[:line_item][:quantity].to_i
      if @order.save 
      @order.order_num="ORDER"+"0"*(7 - @order.id.to_s.length) + @order.id.to_s        
      @order.save #生成订单      
        li=LineItem.new()#记录到购物单
        li.comfrom="店面" 
        li.product_id = product.id
        li.service_id =product.service_id
        li.service_style_id=product.service.service_style_id
        li.quantity    = params[:line_item][:quantity]
        li.price     = product.price
        li.total_price = product.price*params[:line_item][:quantity].to_i
        li.totime = params[:line_item][:totime]
        li.fromtime= Time.now
        li.save
      newiteam=params[:iteambean].constantize.find(params[:bean_id])#资源使用状态改变
      newiteam.situation_id=6
      newiteam.save
     end    
        @service_task = ServiceTask.new
        @service_task.order_id=@order.id
        @service_task.user_id=current_user.id
        @service_task.situation_id=3
        @service_task.description="店面消费现场分配业务"
        @service_task.line_item_id=li.id
        @service_task.save
        @service_task.task_num="TASK"+"0"*(7 - @service_task.id.to_s.length) + @service_task.id.to_s
        @service_task.save
     for i in 1..20
       a="work"+i.to_s
       c="company"+i.to_s
       d="description"+i.to_s
       if params[a][0].to_i&&params[a][0].to_i>0
         task_entries=TaskEntry.new
         task_entries.service_task_id=@service_task.id
         task_entries.user_id=current_user.id#记录人
         task_entries.work_id=params[a][0].to_i
         task_entries.company_id=params[c][0].to_i
         task_entries.description=params[d].to_s
         task_entries.save
       end
     end

     redirect_to :action=>"index"
  end

  # PUT /orders/1
  # PUT /orders/1.xml
  def update
    @order = Order.find(params[:id])
    respond_to do |format|
      if @order.update_attributes(params[:order])
        format.html { redirect_to(@order, :notice => 'Order was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @order.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.xml
  def destroy
    @order = Order.find(params[:id])
    @order.destroy

    respond_to do |format|
      format.html { redirect_to(orders_url) }
      format.xml  { head :ok }
    end
  end
  

end
