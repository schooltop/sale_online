class WorkSalariesController < ApplicationController
  # GET /work_salaries
  # GET /work_salaries.xml
  layout "admins"
  
  def index
    @work_salaries = WorkSalary.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @work_salaries }
    end
     render :layout =>"admins"
  end

  # GET /work_salaries/1
  # GET /work_salaries/1.xml
  def show
    @work_salary = WorkSalary.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @work_salary }
    end
     render :layout =>"admins"
  end

  # GET /work_salaries/new
  # GET /work_salaries/new.xml
  def new
    @work_salary = WorkSalary.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @work_salary }
    end
  end

  # GET /work_salaries/1/edit
  def edit
    @work_salary = WorkSalary.find(params[:id])
  end

  # POST /work_salaries
  # POST /work_salaries.xml
  def create
    @work_salary = WorkSalary.new(params[:work_salary])

    respond_to do |format|
      if @work_salary.save
        format.html { redirect_to(@work_salary, :notice => 'WorkSalary was successfully created.') }
        format.xml  { render :xml => @work_salary, :status => :created, :location => @work_salary }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @work_salary.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /work_salaries/1
  # PUT /work_salaries/1.xml
  def update
    @work_salary = WorkSalary.find(params[:id])

    respond_to do |format|
      if @work_salary.update_attributes(params[:work_salary])
        format.html { redirect_to(@work_salary, :notice => 'WorkSalary was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @work_salary.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /work_salaries/1
  # DELETE /work_salaries/1.xml
  def destroy
    @work_salary = WorkSalary.find(params[:id])
    @work_salary.destroy

    respond_to do |format|
      format.html { redirect_to(work_salaries_url) }
      format.xml  { head :ok }
    end
  end
end
