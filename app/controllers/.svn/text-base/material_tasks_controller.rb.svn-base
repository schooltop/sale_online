class MaterialTasksController < ApplicationController
  # GET /material_tasks
  # GET /material_tasks.xml
  def index
    @material_tasks = MaterialTask.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @material_tasks }
    end
  end

  # GET /material_tasks/1
  # GET /material_tasks/1.xml
  def show
    @material_task = MaterialTask.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @material_task }
    end
  end

  # GET /material_tasks/new
  # GET /material_tasks/new.xml
  def new
    @material_task = MaterialTask.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @material_task }
    end
  end

  # GET /material_tasks/1/edit
  def edit
    @material_task = MaterialTask.find(params[:id])
  end

  # POST /material_tasks
  # POST /material_tasks.xml
  def create
    @material_task = MaterialTask.new(params[:material_task])

    respond_to do |format|
      if @material_task.save
        format.html { redirect_to(@material_task, :notice => 'MaterialTask was successfully created.') }
        format.xml  { render :xml => @material_task, :status => :created, :location => @material_task }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @material_task.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /material_tasks/1
  # PUT /material_tasks/1.xml
  def update
    @material_task = MaterialTask.find(params[:id])

    respond_to do |format|
      if @material_task.update_attributes(params[:material_task])
        format.html { redirect_to(@material_task, :notice => 'MaterialTask was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @material_task.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /material_tasks/1
  # DELETE /material_tasks/1.xml
  def destroy
    @material_task = MaterialTask.find(params[:id])
    @material_task.destroy

    respond_to do |format|
      format.html { redirect_to(material_tasks_url) }
      format.xml  { head :ok }
    end
  end
end
