class WorksController < ApplicationController
  # GET /works
  # GET /works.xml
  layout "admins"
  
  def index
    @works = Work.all.paginate :page=>params[:page], :per_page=>40
      render :layout =>"admins"
  end

  # GET /works/1
  # GET /works/1.xml
  def show
    @work = Work.find(params[:id])
    @works = Work.find(:all).paginate :page=>params[:page], :per_page=>40 #yws
    @vips = Vip.find(:all).paginate :page=>params[:page], :per_page=>40 #yws
    render :layout =>"admins"
    
  end
  
  def check_worker 
    work=Work.find_by_idnum(params[:idnum])
    str=work ? "已存在" : "通过"
    render :text=>str
  end

  # GET /works/new
  # GET /works/new.xml
  def new
    @work = Work.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @work }
    end
  end

  # GET /works/1/edit
  def edit
    @work = Work.find(params[:id])
  end

  # POST /works
  # POST /works.xml
  def create
    @work = Work.new(params[:work])
   
    respond_to do |format|
      if @work.save
         work_salary=WorkSalary.new
         work_salary.work_id=@work.id
         work_salary.post_salary=params[:post_salary]
         work_salary.probation_salary=params[:probation_salary]
         work_salary.benefit=params[:benefit]
         work_salary.accumulation_fund=params[:accumulation_fund]
         work_salary.save
         format.html { redirect_to(@work, :notice => 'Work was successfully created.') }
         format.xml  { render :xml => @work, :status => :created, :location => @work }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @work.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /works/1
  # PUT /works/1.xml
  def update
    @work = Work.find(params[:id])

    respond_to do |format|
      if @work.update_attributes(params[:work])
         work_salary=@work.work_salary
         if work_salary.post_salary!=params[:post_salary] || work_salary.probation_salary!=params[:probation_salary] || work_salary.benefit!=params[:benefit] || work_salary.accumulation_fund!=params[:accumulation_fund] 
         work_salary=WorkSalary.new  
         work_salary.post_salary=params[:post_salary]
         work_salary.probation_salary=params[:probation_salary]
         work_salary.benefit=params[:benefit]
         work_salary.accumulation_fund=params[:accumulation_fund]
         work_salary.save
         end
        format.html { redirect_to(@work, :notice => 'Work was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @work.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /works/1
  # DELETE /works/1.xml
  def destroy
    @work = Work.find(params[:id])
    @work.destroy

    respond_to do |format|
      format.html { redirect_to(works_url) }
      format.xml  { head :ok }
    end
  end
end
