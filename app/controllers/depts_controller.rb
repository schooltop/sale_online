class DeptsController < ApplicationController
  # GET /depts
  # GET /depts.xml
  # before_filter :authorize  ,:only=>['new','edit','destroy']
  before_filter :login_required
  layout "admins"
  def index
     @depts = Dept.paginate( :page => params[:page],:per_page => 30, :order => 'convert(name using gbk)')


    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @depts }
    end
  end

def search_by_name 
    if  params[:name]
      @depts= Dept.find_by_sql("SELECT * FROM depts WHERE (name like '#{params[:name]}%')")
    end
  end


  # GET /depts/1
  # GET /depts/1.xml
  def show
    @dept = Dept.find(params[:id])
    @company=Company.find(:all,:conditions=>"be_delete is null and id=#{params[:id]}")
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @dept }
      format.xml  { render :xml => @company }
    end
  end

  # GET /depts/new
  # GET /depts/new.xml
  def new
    @dept = Dept.new
    
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @dept }
    end
  end

  # GET /depts/1/edit
  def edit
    @dept = Dept.find(params[:id])
  end

  # POST /depts
  # POST /depts.xml
  def create
    @dept = Dept.new(params[:dept])

    respond_to do |format|
      if @dept.save
        flash[:notice] = '部门添加成功！'
        format.html { redirect_to(:action=>'index') }
        format.xml  { render :xml => @dept, :status => :created, :location => @dept }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @dept.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /depts/1
  # PUT /depts/1.xml
  def update
    @dept = Dept.find(params[:id])
    p "***********************dept********************"
    respond_to do |format|
      if @dept.update_attributes(params[:dept])
        flash[:notice] = 'Dept was successfully updated.'
        format.html {redirect_to(:action=>'index') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @dept.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /depts/1
  # DELETE /depts/1.xml
  def destroy
    @dept = Dept.find(params[:id])
    @dept.delete

    respond_to do |format|
      format.html { redirect_to(depts_url) }
      format.xml  { head :ok }
    end
  end
end
