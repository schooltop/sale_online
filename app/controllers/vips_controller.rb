class VipsController < ApplicationController
  # GET /vips
  # GET /vips.xml
  before_filter :login_required
  def index
    @vips = Vip.find(:all,:conditions=>"be_delete is null").paginate :page=>params[:page], :per_page=>40
    render :layout =>"admins"    
  end
  # GET /vips/1
  # GET /vips/1.xml
  def show
    @vip = Vip.find(params[:id])
    @vips = Vip.find(:all,:conditions=>"be_delete is null").paginate :page=>params[:page], :per_page=>40
    render :layout =>"admins"
  end

  def vip_search
    if params[:name]&&params[:name]!=""
      user=User.find(:last,:conditions=>"name='#{params[:name]}' or email='#{params[:name]}'")
      if user
        flash[:notice] = "你好，以下是查询相关用户信息，请核对后办卡。"
        if params[:style]=="order"
        redirect_to :controller=>"admin_new_order",:user_id=>user.id ,:bean_id=>params[:bean_id],:iteambean=>params[:iteambean]
        else
        redirect_to :action=>"new",:user_id=>user.id  
        end
      else
        flash[:notice] = "你好，该用户#{params[:name]}不存在，请确认用户帐号是否准确。"
        if params[:style]=="order"
        redirect_to :controller=>"admin_new_order",:bean_id=>params[:bean_id],:iteambean=>params[:iteambean]
        else
        redirect_to :action=>"new"
        end
      end        
    elsif params[:email]&&params[:email]!=""
        user=User.find_by_email(params[:email])
      if user
        flash[:notice] = "你好，该用户#{params[:email]}已经存在"
        if params[:style]=="order"
        redirect_to :controller=>"admin_new_order",:bean_id=>params[:bean_id],:iteambean=>params[:iteambean]
        else
        redirect_to :action=>"new"
        end
      else
        user=User.new
        user.email=params[:email]
        user.name=params[:user_name]
        user.coins_num=0
        user.save  
        flash[:notice] = "你好，以下是新建用户相关信息，请核对后办卡。"
        if params[:style]=="order"
        redirect_to :controller=>"admin_new_order",:user_id=>user.id ,:bean_id=>params[:bean_id],:iteambean=>params[:iteambean]
        else
        redirect_to :action=>"new",:user_id=>user.id
        end
      end  
    end
  end
  # GET /vips/new
  # GET /vips/new.xml
  def new
    if params[:user_id]
      @user=User.find(params[:user_id])
    end
    @vip = Vip.new
    render :layout =>"admins"
  end

  # GET /vips/1/edit
  def edit
    @vip = Vip.find(params[:id])
    render :layout =>"admins"
  end

  # POST /vips
  # POST /vips.xml
  def create
    if params[:vip][:user_id]
    @user=User.find(params[:vip][:user_id].to_i)  
    @vip = Vip.new(params[:vip])
    @vip_style=VipStyle.find(params[:vip][:vip_style_id].to_i)
      if @vip.save
        @order=Order.new
        @order.user_id=@user.id
        @order.work_user_id=current_user.id
        @order.name=@user.name
        @order.email=@user.email
        @order.tel=@user.user_profile.tel_num
        @order.has_pay_id=6
        @order.state_id=5
        @order.total_price=@vip_style.leave
        @order.save
        
        li=LineItem.new()#记录到购物单
        li.order_id= @order.id
        li.comfrom="店面"  
        li.quantity    = 1
        li.price     = @vip_style.leave
        li.total_price = @vip_style.leave
        li.totime =  params["totime"]
        li.fromtime= params["fromtime"]
        li.save 
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
         task_entries.work_id=current_user.work.id
         task_entries.company_id=current_user.work.company_id if current_user.work
         task_entries.description="购买VIP卡"
         task_entries.commission_style_id=2
         task_entries.commission_config_id=CommissionConfig.find(:last,:conditions=>"commission_style_id=2")
         task_entries.save
         redirect_to :controller=>"orders",:action=>"print_order",:order_id=>@order.id,:paytype=>"现金"
      else
        redirect_to :action=>"new"
      end
    else
      flash[:notice]="请先填写或创建用户！"
      redirect_to :action=>"new"
    end
  end

  # PUT /vips/1
  # PUT /vips/1.xml
  def update
    @vip = Vip.find(params[:id])

    respond_to do |format|
      if @vip.update_attributes(params[:vip])
        format.html { redirect_to(@vip, :notice => 'Vip was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @vip.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /vips/1
  # DELETE /vips/1.xml
  def destroy
    @vip = Vip.find(params[:id])
    @vip.update_attributes(:be_delete=>1)

    respond_to do |format|
      format.html { redirect_to(vips_url) }
      format.xml  { head :ok }
    end
  end
end
