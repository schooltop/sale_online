class CadPositionsController < ApplicationController
  # GET /cad_positions
  # GET /cad_positions.xml
  #bimba最新职位 
  #before_filter :authorize,:only=>["new","edit","show","index"]
  before_filter :login_required
  auto_complete_for :stu_reg_inf,:name
  auto_complete_for :city, :name
  auto_complete_for :user, :name
  layout "admins"
  def index
    @cad_positions = CadPosition.paginate( :page => params[:page],:per_page => 30, :order =>'convert(situation_id using gbk)desc', :order =>'convert(created_at using gbk)desc')
    render :layout=>"admins"
  end


 def enterprise_position_marks
     unless params[:marks].nil?
       cad_position_ids=params[:marks]
      case params[:form_action]        
        when "gift"        
         for cad_position_id in cad_position_ids
           cad_position=CadPosition.find(cad_position_id)
           preparegift=CadEnterprisePreparegift.find(:last,:conditions=>"cad_contact_id=#{cad_position.cad_contact_id}")
         if preparegift
           preparegift.update_attributes(:s_id=>2,:cad_position_id=>cad_position_id,:statue=>1)#s_id=2为招聘答谢,statue=1为未答谢
         else
           cad_enterprise_preparegift=CadEnterprisePreparegift.new
           cad_enterprise_preparegift.cad_position_id=cad_position_id
           cad_enterprise_preparegift.cad_contact_id=cad_position.cad_contact_id
           cad_enterprise_preparegift.cad_enterprise_id=cad_position.cad_enterprise_id
           cad_enterprise_preparegift.user_id=session[:user_id]
           cad_enterprise_preparegift.timenum=1
           cad_enterprise_preparegift.statue=1 #1未答谢、0为已答谢、2为删除 隐藏         
           cad_enterprise_preparegift.s_id=2#1为招聘答谢
           cad_enterprise_preparegift.save
         end         
         end 
         redirect_to(:controller=>"cad_enterprise_preparegifts" )     
        when "delete"          
        when "contact"
          redirect_to(:controller=>"add_contact",:cad_active_id=>params[:cad_active_id])
          #@cad_active=CadActive.find(params[:cad_active_id])
          #@cad_contacts= CadContact.paginate( :page => params[:page],:per_page => 10, :order =>'convert(created_at using gbk)desc')
          #render :action=>"add_contact"  
        when "email"
           redirect_to(:controller=>"for_active_email",:cad_active_id=>params[:cad_active_id],:cad_contact_ids=>cad_contact_ids)
      end 
      else
        if params[:form_action]=="contact"   
         redirect_to(:controller=>"add_contact",:cad_active_id=>params[:cad_active_id])
         #render :action=>"add_contact",:cad_active_id=>params[:cad_active_id]  
        else
        render :text => "请至少选择一条记录进行操作！<a href='/cad_enterprise_actives'>请返回操作</a>",:layout=>"admins"
        end
     end
  end

 def cad_positions_search#职位查找
    sql = ""
    @cad_positions = Array.new
    name = params[:name] unless params[:name].nil?
    name_ent = params[:name_ent] unless params[:name_ent].nil?
    name_com = params[:name_com] unless params[:name_com].nil?
    cad_contact_id = params[:post][:cad_contact_id] unless params[:post][:cad_contact_id].nil?
    exparience = params[:exparience] unless params[:exparience].nil? 
    wage= params[:wage] unless params[:wage].nil? 
    keyword= params[:keyword] unless params[:keyword].nil? 
    nposition_id= params[:post][:nposition_id] unless params[:post][:nposition_id].nil? 
    city_id = params[:post][:city_id] unless params[:post][:city_id].nil?
    educationbg_id = params[:post][:educationbg_id] unless params[:post][:educationbg_id].nil?
    unless name.nil? || name.empty?
      sql += "  and title like '%#{name}%' "
    end  
    
    unless name_ent.nil? || name_ent.empty?
      sql += "  and title like '%#{name_ent}%' "
    end      
    
    unless city_id.nil? || city_id.empty?
      sql += " and city_id = '#{city_id}' "
    end 
    
    unless cad_contact_id.nil? || cad_contact_id.empty?
      sql += " and cad_contact_id = #{cad_contact_id} "
    end 
    
    unless exparience.nil? || exparience.empty? 
      sql += " and exparience = '#{exparience}' "
    end    
    
    unless wage.nil? || wage.empty? 
      sql += " and wage<#{wage} and towage>#{wage} "
    end 
    
    unless nposition_id.nil? || nposition_id.empty? 
      sql += " and nposition_id = '#{nposition_id}' "
    end 
    
    unless educationbg_id.nil? || educationbg_id.empty? 
      sql += " and educationbg_id = '#{educationbg_id}' "
    end
       
    unless educationbg_id.nil? || educationbg_id.empty? 
      sql += " and educationbg_id = '#{educationbg_id}' "
    end   
       
    unless keyword.nil? || keyword.empty? 
      sql += " and (keya = '#{keyword}' or keyb = '#{keyword}' or keyc = '#{keyword}' or keyd = '#{keyword}')"
    end      
              
    @cad_positions= CadPosition.find_by_sql("select * from cad_positions where id is not null #{sql} ")
  
    unless name_com.nil? || name_com.empty?
      enterprises=CadEnterprise.find(:all,:conditions=>"company like '%#{name_com}%' ")
       for enterprise in enterprises
       for cad_position in enterprise.cad_positions
       @cad_positions << cad_position
       end
      end
    end 
   @cad_positions = @cad_positions.paginate( :page => params[:page],:per_page => 30, :order =>'convert(created_at using gbk)desc',:order => 'convert(title using gbk)')

 end



#最新职位
  def topt
    @cad_positions = CadPosition.paginate( :page => params[:page],:per_page => 10, :order =>'convert(situation_id using gbk)desc', :order =>'convert(created_at using gbk)desc')
    #,:conditions=>"created_at>'#{(Time.now-(8*24*60*60)).to_formatted_s(:db)}' and situation_id=2"
    #user=User.find(session[:user_id])
    #if user.all_roles.include?12
     render :layout => "stu_center"       
    #end
  end
 
  # GET /cad_positions/1
  # GET /cad_positions/1.xml
  def show
    @cad_position = CadPosition.find(params[:id])
    render :layout=>"admins"
  end
  
  #学生查看职位
  def user_position_show
    @cad_position = CadPosition.find(params[:id])
    user=User.find(session[:user_id])
    student_id=user.stu_reg_inf_id
    @chect=0
    employ=CadEmploy.find_by_sql("select * from cad_employs where (cad_position_id=#{params[:id]} and stu_reg_inf_id=#{student_id})")
    if employ!=[]
      @chect=1
    end
    render :layout => "stu_center"   
  end

  #匹配企业/联系人
  def chect_e_c
    @cad_position = CadPosition.find(params[:id])    
     render :layout=>"admins"
  end

  #审核
  def chect
     @cad_position = CadPosition.find(params[:id])
     @cad_position.update_attributes( :situation_id=>2)
     @cad_enterpriseinformation=CadEnterpriseinformation.new
     @cad_enterpriseinformation.cad_enterprise_id=@cad_position.cad_enterprise_id
     @cad_enterpriseinformation.cad_position_id=@cad_position.id
     @cad_enterpriseinformation.user_id=session[:user_id]
     @cad_enterpriseinformation.cad_category_id=7
     @cad_enterpriseinformation.save
     redirect_to(:controller => "cad_positions") 
  end

  # GET /cad_positions/new
  # GET /cad_positions/new.xml 
  def new

    @cad_position = CadPosition.new
    if params[:cad_contact_id]
    @cad_contact=CadContact.find(params[:cad_contact_id])
    elsif params[:cad_enterprise_id]     
    @cad_contact= CadContact.find(:last,:conditions=>"cad_enterprise_id=#{params[:cad_enterprise_id] }") 
    end
    if params[:cad_enterprise_id]
    @cad_enterprise=CadEnterprise.find(params[:cad_enterprise_id])
    elsif params[:cad_contact_id]
    @cad_enterprise=CadEnterprise.find(@cad_contact.cad_enterprise_id)  
    end
    if params[:s_id]
      @s_id=params[:s_id]
    end
    render :layout=>"admins"
  end

  # GET /cad_positions/1/edit
  def edit
    @cad_position = CadPosition.find(params[:id])
    render :layout=>"admins"
  end

  # POST /cad_positions
  # POST /cad_positions.xml
  def chect_position_passt
     @cad_position = CadPosition.find(params[:id])
     @cad_position.situation_id=2
     @cad_position.save
     redirect_to :action=>"index"
  end
  
  
  def create
    @cad_position = CadPosition.new(params[:cad_position])
    city =City.find_by_name(params[:city][:name])
    if !city    
      city=City.new
      city.name=params[:city][:name]
      city.save
    end
    @cad_position.city_id=city.id
    @cad_position.situation_id=1
        if params[:cad_position][:cad_contact_id]
          @cad_contact=CadContact.find(params[:cad_position][:cad_contact_id]) 
          @cad_position.contact=@cad_contact.name          
          @cad_position.cad_enterprise_id=@cad_contact.cad_enterprise_id
          @cad_enterprise=CadEnterprise.find(@cad_contact.cad_enterprise_id) 
          @cad_position.title=@cad_enterprise.company
        end
        @cad_position.jobid="JOB"+"0"*(7 - @cad_position.id.to_s.length) + @cad_position.id.to_s
    respond_to do |format|
      if @cad_position.save
        flash[:notice] = '职位招聘信息创建成功.'
        format.html { redirect_to(@cad_position) }
        format.xml  { render :xml => @cad_position, :status => :created, :location => @cad_position }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @cad_position.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /cad_positions/1
  # PUT /cad_positions/1.xml
  def update
    @cad_position = CadPosition.find(params[:id])

    respond_to do |format|
      if @cad_position.update_attributes(params[:cad_position])
        for cad_employ in @cad_position.cad_employs      
          cad_employ.cad_email.update_attributes(:recipient=>@cad_position.email)
        end        
        flash[:notice] = 'CadPosition was successfully updated.'
        format.html { redirect_to(@cad_position) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @cad_position.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /cad_positions/1
  # DELETE /cad_positions/1.xml
  def destroy
    @cad_position = CadPosition.find(params[:id])
    @cad_position.destroy

    respond_to do |format|
      format.html { redirect_to(cad_positions_url) }
      format.xml  { head :ok }
    end
  end
end
