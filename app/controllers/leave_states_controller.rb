class LeaveStatesController < ApplicationController
  # GET /leave_states
  # GET /leave_states.xml
  layout "admins"
  def index
    #@leaves = Leave.all
    @leaves = Leave.find_by_sql("select * from  leaves where work_id in (select id from  works where dept_id = #{current_user.work.dept_id}) ").paginate (:page=>params[:page], :per_page=>10,:order =>'convert(pass_state using gbk)desc',:order =>'convert(created_at using gbk)desc')
   # @leave_states = LeaveState.find_by_sql("select state_id from leave_states where leave_id in (select id from leaves)").paginate( :page => params[:leave_state_page],:per_page => 5, :order =>'convert(created_at using gbk)desc')
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @leave_states }
    end
  end

  # GET /leave_states/1
  # GET /leave_states/1.xml
  def show
    @leave_state = LeaveState.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @leave_state }
    end
  end

  # GET /leave_states/new
  # GET /leave_states/new.xml
  def new
    @leave_state = LeaveState.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @leave_state }
    end
  end

  # GET /leave_states/1/edit
  def edit
    @leave_state = LeaveState.find(params[:id])
  end

  # POST /leave_states
  # POST /leave_states.xml
  def create
    @leave_state = LeaveState.new(params[:leave_state])

    respond_to do |format|
      if @leave_state.save
        flash[:notice] = 'LeaveState was successfully created.'
        format.html { redirect_to(@leave_state) }
        format.xml  { render :xml => @leave_state, :status => :created, :location => @leave_state }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @leave_state.errors, :status => :unprocessable_entity }
      end
    end
  end
  
  def check_data(from_time,end_time)#截取月份内时间
  from_month_time=from_time.end_of_month
  end_month_time=end_time.end_of_month
  if end_time<month_time 
    
  else   
     
  end
  
  end

  # PUT /leave_states/1
  # PUT /leave_states/1.xml
  def update
    @leave_state = LeaveState.find(params[:id])

    respond_to do |format|
      if @leave_state.update_attributes(params[:leave_state])
        flash[:notice] = 'LeaveState was successfully updated.'
        format.html { redirect_to(@leave_state) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @leave_state.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /leave_states/1
  # DELETE /leave_states/1.xml
  def destroy
    @leave_state = LeaveState.find(params[:id])
    @leave_state.destroy

    respond_to do |format|
      format.html { redirect_to(leave_states_url) }
      format.xml  { head :ok }
    end
  end
  # def leave_state_check
    # @leave_state = LeaveState.new
    # @leave_state.leave_id = @leave.id 
    # if params[:state]==1
    # @leave_state.state=1
    # @leave_state.save
    # @leave.update_attributes(:pass_state=>1) 
    # redirect_to(:action=>"index",:id=>params[:id])
    # elsif params[:state]==0  
    # @leave_state.state=0
    # @leave_state.save
    # @leave.update_attributes(:pass_state=>0) 
    # @leave.update_attributes(:state=>0) 
    # redirect_to(:action=>"index",:id=>params[:id])
    # end
  # end
  
   
  
  
  # def leave_state_check
    # @leave_state = LeaveState.new
#     
    # @leave_state.leave_id = params[:id] 
#     
  # end
#   
  # def leave_pass
    # @leave=Leave.find(params[:id])
    # if params[:state]==1
     # @leave_state.state_id=1
     # @leave_state.save
     # @leave.update_attributes(:pass_state=>1) 
     # redirect_to(:action=>"index",:id=>params[:id])
    # elsif params[:state]==0
     # @leave_state.state=0
     # @leave_state.save
     # @leave.update_attributes(:state_id=>0,:pass_state=>0) 
     # redirect_to(:action=>"index",:id=>params[:id])
    # end
  # end
  
      
      def leave_state_check
        @leave=Leave.find(params[:id])   
      end

    def leave_pass
        @leave_state = LeaveState.new
        @leave=Leave.find(params[:id])
        @leave_state.leave_id = params[:id] 
        if params[:state]=="1"
         @leave_state.state_id=1
         @leave_state.work_id=current_user.work.id
         @leave_state.level=1
         @leave_state.save
         @leave.update_attributes(:pass_state=>1) 
        elsif params[:state]=="0"
         @leave_state.state=0
         @leave_state.work_id=current_user.work.id
         @leave_state.level=1
         @leave_state.save
         @leave.update_attributes(:state_id=>0,:pass_state=>0)     
        end
        redirect_to(:action=>"index",:id=>params[:id])
    end


end
