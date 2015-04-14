class LeavesController < ApplicationController
  # GET /leaves
  # GET /leaves.xml
  layout "admins"
  def index
    if current_user.is_admin?
      @leaves = Leave.all.paginate (:page=>params[:page], :per_page=>40,:order =>'convert(created_at using gbk)desc')
    else
    @leaves = Leave.find_by_sql("select * from leaves where work_id = #{current_user.work.id}").paginate (:page=>params[:page], :per_page=>40,:order =>'convert(created_at using gbk)desc')
    #  @leaves = Leave.all.paginate :page=>params[:page], :per_page=>40
    end
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @leaves }
    end
  end

  # GET /leaves/1
  # GET /leaves/1.xml
  def show
    @leave = Leave.find(params[:id])
    
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @leave }
    end
  end

  # GET /leaves/new
  # GET /leaves/new.xml
  def new
    @leave = Leave.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @leave }
    end
  end

  # GET /leaves/1/edit
  def edit
    @leave = Leave.find(params[:id])
  end

  # POST /leaves
  # POST /leaves.xml
 

  def create
      @leave = Leave.new(params[:leave])
      params[:commit]=="保存"?@leave.state_id=0:@leave.state_id=1
      @leave.work_id=current_user.work.id if !current_user.is_admin?
      respond_to do |format|
        if @leave.save
          flash[:notice] = 'Leave was successfully created.'
          format.html { redirect_to(:action=>"show") }
          format.xml  { render :xml => @leave, :status => :created, :location => @leave }         
        else
          format.html { render :action => "new" }
          format.xml  { render :xml => @leave.errors, :status => :unprocessable_entity }
        end
      end
  end
    
  def work_leaves
    @leaves=Leave.find(:all,:conditions=>"user_id=#{current_user.id}")
  end
  # PUT /leaves/1
  # PUT /leaves/1.xml
  def update
    @leave = Leave.find(params[:id])
    if @leave.state_id=0
      respond_to do |format|
        if @leave.update_attributes(params[:leave])
          flash[:notice] = 'Leave was successfully updated.'
          format.html { redirect_to(@leave) }
          format.xml  { head :ok }
        else
          format.html { render :action => "edit" }
          format.xml  { render :xml => @leave.errors, :status => :unprocessable_entity }
        end
      end
    else
       flash[:notice] = '已经提交，不能修改'
       format.html { redirect_to(:action=>"index") }
  end
end
  # DELETE /leaves/1
  # DELETE /leaves/1.xml
  def destroy
    @leave = Leave.find(params[:id])
    @leave.destroy

    respond_to do |format|
      format.html { redirect_to(leaves_url) }
      format.xml  { head :ok }
    end
  end
  
  def leave_chect
    @leave = Leave.find(params[:id])
    @leave.update_attributes(:state_id=>1)
    @leave.save
    redirect_to(:action=>"show",:id=>params[:id])
  end
 
  
end
