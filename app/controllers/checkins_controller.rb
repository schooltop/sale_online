class CheckinsController < ApplicationController
  # GET /checkins
  # GET /checkins.xml
  layout "admins"
  
  
  
  
  def new
    if current_user.is_admin?
      @works = work.all.paginate (:page=>params[:page], :per_page=>40,:order =>'convert(created_at using gbk)desc')
    else
      @works = work.find_by_sql("select * from wherks where dept_id = #{current_user.work.dept_id}").paginate (:page=>params[:page], :per_page=>40,:order =>'convert(created_at using gbk)desc')
    end

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @checkin }
    end
  end

  
  
  
  
  def edit

    if current_user.is_admin?
      @works = work.all.paginate (:page=>params[:page], :per_page=>40,:order =>'convert(created_at using gbk)desc')
    else
      @works = work.find_by_sql("select * from wherks where dept_id = #{current_user.work.dept_id}").paginate (:page=>params[:page], :per_page=>40,:order =>'convert(created_at using gbk)desc')
    end
    
    
    late_checkins = Checkin.find(:all,:conditions=>"event_id=#{@event.id} and late='迟到'")    
    @late_stu_reg_infs=[]
    for checkin in late_checkins
    @late_stu_reg_infs<<checkin.stu_reg_inf
    end
    leaver_checkins = Checkin.find(:all,:conditions=>"event_id=#{@event.id} and leaver='早退'")    
    @leaver_stu_reg_infs=[]
    for checkin in leaver_checkins
    @leaver_stu_reg_infs<<checkin.stu_reg_inf
    end
    truant_checkins = Checkin.find(:all,:conditions=>"event_id=#{@event.id} and truant='没来'")    
    @truant_stu_reg_infs=[]
    for checkin in truant_checkins
    @truant_stu_reg_infs<<checkin.stu_reg_inf
    end 
    kuaban_checkins = Checkin.find(:all,:conditions=>"event_id=#{@event.id} and kuaban='跨班'")    
    @kuaban_stu_reg_infs=[]
    for checkin in kuaban_checkins
    @kuaban_stu_reg_infs<<checkin.stu_reg_inf
    end 
   end

  # POST /checkins
  # POST /checkins.xml创建
  def create
   
  #if params[:checkin][:team_id]
    #team=Team.find(params[:checkin][:team_id])
    #stu_reg_infs=team.stu_reg_infs
   # else
    courses_stu_reg_infs=CoursesStuRegInf.find(:all,:conditions=>"student_class_id=#{params[:checkin][:student_class_id]} and course_id=#{params[:checkin][:course_id]} and (situation='已选' or (situation='通过' or situation='免修') or situation='不过')")
    stu_reg_infs=[]
    for courses_stu_reg_inf in courses_stu_reg_infs
    stu_reg_infs<<courses_stu_reg_inf.stu_reg_inf
    end
 #end  
  for stu_reg_inf in stu_reg_infs
    if params["checkin"]["late_stu_reg_inf_#{stu_reg_inf.id}"] || params["checkin"]["leaver_stu_reg_inf_#{stu_reg_inf.id}"] || params["checkin"]["truant_stu_reg_inf_#{stu_reg_inf.id}"]|| params["checkin"]["kuaban_stu_reg_inf_#{stu_reg_inf.id}"]
      checkin = Checkin.new
      checkin.stu_reg_inf_id=stu_reg_inf.id
      checkin.event_id=params[:checkin][:event_id]
      checkin.student_class_id=params[:checkin][:student_class_id]
      checkin.course_id=params[:checkin][:course_id]
      #if params[:checkin][:team_id] 
      #checkin.team_id=params[:checkin][:team_id]         
      #end
      if params["checkin"]["late_stu_reg_inf_#{stu_reg_inf.id}"]
      checkin.late="迟到"  
      checkin.latetime=params["late#{stu_reg_inf.id}"]
      end
      if params["checkin"]["leaver_stu_reg_inf_#{stu_reg_inf.id}"]
      checkin.leaver="早退"  
      checkin.leavertime=params["leaver#{stu_reg_inf.id}"]
      end
      if params["checkin"]["truant_stu_reg_inf_#{stu_reg_inf.id}"]
      checkin.truant="没来"  
      checkin.truantrecord=params["truant#{stu_reg_inf.id}"]
      end
      if params["checkin"]["kuaban_stu_reg_inf_#{stu_reg_inf.id}"]
      checkin.kuaban="跨班"  
      checkin.kuabanrecord=params["kuaban#{stu_reg_inf.id}"]
      end
      checkin.save
    end
  end
    redirect_to :action =>"show",:id=>params[:checkin][:event_id]
  end

  
  
  
  
  def update
    #if params[:event][:team_id]
      #team=Team.find(params[:event][:team_id])
      #stu_reg_infs=team.stu_reg_infs
    #else
      courses_stu_reg_infs=CoursesStuRegInf.find(:all,:conditions=>"student_class_id=#{params[:event][:student_class_id]} and course_id=#{params[:event][:course_id]} and (situation='已选' or (situation='通过' or situation='免修') or situation='不过')")
      stu_reg_infs=[]
      for courses_stu_reg_inf in courses_stu_reg_infs
        stu_reg_infs<<courses_stu_reg_inf.stu_reg_inf
      end
    #end  
     
     checkins = Checkin.find(:all,:conditions=>"event_id=#{params[:event_id]}")    
      all_stu_reg_infs=[]
      for checkin in checkins
        all_stu_reg_infs<<checkin.stu_reg_inf
    end
    
  for stu_reg_inf in stu_reg_infs    
    if all_stu_reg_infs.include?StuRegInf.find(stu_reg_inf.id)
       
    if  params["checkin"]["late_stu_reg_inf_#{stu_reg_inf.id}"] || params["checkin"]["leaver_stu_reg_inf_#{stu_reg_inf.id}"] || params["checkin"]["truant_stu_reg_inf_#{stu_reg_inf.id}"]|| params["checkin"]["kuaban_stu_reg_inf_#{stu_reg_inf.id}"]                
      late_checkin=Checkin.find(:last,:conditions=>"event_id=#{params[:event_id]} and stu_reg_inf_id=#{stu_reg_inf.id}")   
      if params["checkin"]["late_stu_reg_inf_#{stu_reg_inf.id}"] 
        late_checkin.update_attributes( :latetime=>params["late#{stu_reg_inf.id}"],:late=>'迟到')        
      else
        late_checkin.update_attributes( :latetime=>nil,:late=>nil)
      end
      
      if params["checkin"]["leaver_stu_reg_inf_#{stu_reg_inf.id}"] 
        late_checkin.update_attributes( :leavertime=>params["leaver#{stu_reg_inf.id}"],:leaver=>'早退')        
      else
        late_checkin.update_attributes( :leavertime=>nil,:leaver=>nil)
      end
    
      if  params["checkin"]["truant_stu_reg_inf_#{stu_reg_inf.id}"]  
        late_checkin.update_attributes(:truantrecord=>params["truant#{stu_reg_inf.id}"],:truant=>'没来')        
      else
        late_checkin.update_attributes( :truantrecord=>nil,:truant=>nil)
      end
    
     if  params["checkin"]["kuaban_stu_reg_inf_#{stu_reg_inf.id}"]  
        late_checkin.update_attributes(:kuabanrecord=>params["kuaban#{stu_reg_inf.id}"],:kuaban=>'跨班')        
      else
        late_checkin.update_attributes( :kuabanrecord=>nil,:kuaban=>nil)
      end
    
    else
      late_checkin=Checkin.find(:last,:conditions=>"event_id=#{params[:event_id]} and stu_reg_inf_id=#{stu_reg_inf.id}")   
      late_checkin.delete
      end      
    else      
       if  params["checkin"]["late_stu_reg_inf_#{stu_reg_inf.id}"] || params["checkin"]["leaver_stu_reg_inf_#{stu_reg_inf.id}"] || params["checkin"]["truant_stu_reg_inf_#{stu_reg_inf.id}"]|| params["checkin"]["kuaban_stu_reg_inf_#{stu_reg_inf.id}"]                

      checkin = Checkin.new
      checkin.stu_reg_inf_id=stu_reg_inf.id
      checkin.event_id=params[:event_id]
      checkin.student_class_id=params[:event][:student_class_id]
      checkin.course_id=params[:event][:course_id]
      #if params[:event][:team_id] 
      #checkin.team_id=params[:event][:team_id]         
      #end
      if params["checkin"]["late_stu_reg_inf_#{stu_reg_inf.id}"]
      checkin.late="迟到"  
      checkin.latetime=params["late#{stu_reg_inf.id}"]
      end 
      if params["checkin"]["leaver_stu_reg_inf_#{stu_reg_inf.id}"]
      checkin.leaver="早退"  
      checkin.leavertime=params["leaver#{stu_reg_inf.id}"]
      end
      if params["checkin"]["truant_stu_reg_inf_#{stu_reg_inf.id}"]
      checkin.truant="没来"  
      checkin.truantrecord=params["truant#{stu_reg_inf.id}"]
      end
      if params["checkin"]["kuaban_stu_reg_inf_#{stu_reg_inf.id}"]
      checkin.kuaban="跨班"  
      checkin.kuabanrecord=params["kuaban#{stu_reg_inf.id}"]
      end
       checkin.save
     else
     end
       
    end   

   end
    redirect_to :action =>"show",:id=>params[:event_id]
  end

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  def index
    @checkins = Checkin.find(:all, :order =>'convert(id using gbk)desc').paginate :page=>params[:page], :per_page=>40

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @checkins }
    end
  end

  # GET /checkins/1
  # GET /checkins/1.xml
  def show
    @checkin = Checkin.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @checkin }
    end
  end

  # GET /checkins/new
  # GET /checkins/new.xml
  def new
    @checkin = Checkin.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @checkin }
    end
  end

  # GET /checkins/1/edit
  def edit
    @checkin = Checkin.find(params[:id])
  end

  # POST /checkins
  # POST /checkins.xml
  def create
    @checkin = Checkin.new(params[:checkin])

    respond_to do |format|
      if @checkin.save
        flash[:notice] = 'Checkin was successfully created.'
        format.html { redirect_to(@checkin) }
        format.xml  { render :xml => @checkin, :status => :created, :location => @checkin }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @checkin.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /checkins/1
  # PUT /checkins/1.xml
  def update
    @checkin = Checkin.find(params[:id])

    respond_to do |format|
      if @checkin.update_attributes(params[:checkin])
        flash[:notice] = 'Checkin was successfully updated.'
        format.html { redirect_to(@checkin) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @checkin.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /checkins/1
  # DELETE /checkins/1.xml
  def destroy
    @checkin = Checkin.find(params[:id])
    @checkin.destroy

    respond_to do |format|
      format.html { redirect_to(checkins_url) }
      format.xml  { head :ok }
    end
  end
end
