class VipconsumnosController < ApplicationController
  # GET /vipconsumnos
  # GET /vipconsumnos.xml
  before_filter :find_cart, :except => :empty_cart
  def index
    @vipconsumnos = Vipconsumno.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @vipconsumnos }
    end
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


  def send_vip_consume_message#VIP短信消费回执发送
    if params[:dh]
    user=User.find(current_user.id)
    if params[:vipconsumnum_text]
      vipconsumnum=Vipconsumno.find(:last,:conditions=>"user_id=#{user.id}")
      if vipconsumnum
        if vipconsumnum.situation
              render :text => "<button type='submit' class='button' style='border:0px'><img src='/images/center/dh.png' /></button>回执短息已过期！请再次点击兑换。" 
        elsif params[:vipconsumnum_text]==vipconsumnum.num
           vipconsumnum.situation=1      
           vipconsumnum.save                      
            @order = Order.new#生成订单
            @order.user_id=user.id    
            @order.add_line_items_from_cart(@cart)
            @order.total_price=@cart.total_price
            @order.save  
              @order.order_num="ORDER"+"0"*(7 - @order.id.to_s.length) + @order.id.to_s        
              @order.save    
              session[:cart] = nil                   
             for vip_service in VipService.all#加VIP消费记录
              #str=vip_service.id.to_s   
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
              flash[:notice]="您的订单已提交，客服人员将在第一时间和您取得联系。"
              redirect_to :controller=>"show_vip_consume",:order_id=>@order.id#原单总数显示，vip兑换显示。计算出相应价钱，处理后调用支付方式联系信息更新页面。
                              
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
  
  
  def show_vip_consume#VIP兑换成功订单
    @order=Order.find(params[:order_id])
    render :layout=>"login"
  end


 def save_order_infs#保存vip收获信息
   @order = Order.find(params[:id])
   @order.update_attributes(params[:order])
   flash[:notice]="您的订单已提交，客服人员将在第一时间和您取得联系。"
   redirect_to :controller=>"stores"
 end

  # GET /vipconsumnos/1
  # GET /vipconsumnos/1.xml
  def show
    @vipconsumno = Vipconsumno.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @vipconsumno }
    end
  end

  # GET /vipconsumnos/new
  # GET /vipconsumnos/new.xml
  def new
    @vipconsumno = Vipconsumno.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @vipconsumno }
    end
  end

  # GET /vipconsumnos/1/edit
  def edit
    @vipconsumno = Vipconsumno.find(params[:id])
  end

  # POST /vipconsumnos
  # POST /vipconsumnos.xml
  def create
    @vipconsumno = Vipconsumno.new(params[:vipconsumno])

    respond_to do |format|
      if @vipconsumno.save
        format.html { redirect_to(@vipconsumno, :notice => 'Vipconsumno was successfully created.') }
        format.xml  { render :xml => @vipconsumno, :status => :created, :location => @vipconsumno }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @vipconsumno.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /vipconsumnos/1
  # PUT /vipconsumnos/1.xml
  def update
    @vipconsumno = Vipconsumno.find(params[:id])

    respond_to do |format|
      if @vipconsumno.update_attributes(params[:vipconsumno])
        format.html { redirect_to(@vipconsumno, :notice => 'Vipconsumno was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @vipconsumno.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /vipconsumnos/1
  # DELETE /vipconsumnos/1.xml
  def destroy
    @vipconsumno = Vipconsumno.find(params[:id])
    @vipconsumno.destroy

    respond_to do |format|
      format.html { redirect_to(vipconsumnos_url) }
      format.xml  { head :ok }
    end
  end
end
