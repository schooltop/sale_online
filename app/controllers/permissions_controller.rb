class PermissionsController < ApplicationController
  # GET /permissions
  # GET /permissions.xml
  # before_filter :authorize  ,:only=>['new','edit','destroy']
  # before_filter :login_required
  layout "admins"
  
  def index
    if params[:education]
    @PNAME="教务"  
    @permission_checks=Permission.find(:all,:conditions=>"sys_state_id=2")
    elsif params[:schoolf]
    @PNAME="校友" 
    @permission_checks=Permission.find(:all,:conditions=>"sys_state_id=3")  
    elsif params[:career]
    @PNAME="职业发展" 
    @permission_checks=Permission.find(:all,:conditions=>"sys_state_id=4") 
    elsif params[:newstu]
    @PNAME="招生"   
    @permission_checks=Permission.find(:all,:conditions=>"sys_state_id=1")   
    else
    @PNAME="实习生" 
    @permission_checks=Permission.find(:all,:conditions=>"sys_state_id=5")  
    end
    @permissions = @permission_checks.paginate( :page => params[:page],:per_page => 50, :order => 'created_at')
    respond_to do |format|
      format.html # index.html.erb
      format.xml{ render :xml => @permissions }
    end
  end

  # GET /permissions/1
  # GET /permissions/1.xml
  def show
    @permission = Permission.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @permission }
    end
  end

  # GET /permissions/new
  # GET /permissions/new.xml
  def new
    @permission = Permission.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @permission }
    end
  end

  # GET /permissions/1/edit
  def edit
    @permission = Permission.find(params[:id])
  end

  # POST /permissions
  # POST /permissions.xml
  def create
    @permission = Permission.new(params[:permission])

    respond_to do |format|
      if @permission.save
        flash[:notice] = 'Permission was successfully created.'
        format.html { redirect_to(@permission) }
        format.xml  { render :xml => @permission, :status => :created, :location => @permission }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @permission.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /permissions/1
  # PUT /permissions/1.xml
  def update
    @permission = Permission.find(params[:id])

    respond_to do |format|
      if @permission.update_attributes(params[:permission])
        flash[:notice] = 'Permission was successfully updated.'
        format.html { redirect_to(@permission) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @permission.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /permissions/1
  # DELETE /permissions/1.xml
  def destroy
    @permission = Permission.find(params[:id])
    @permission.destroy

    respond_to do |format|
      format.html { redirect_to(permissions_url) }
      format.xml  { head :ok }
    end
  end
end
