class ServiceTasksController < ApplicationController
  # GET /service_tasks
  # GET /service_tasks.xml
  layout "admins"
  def index
    @service_tasks = ServiceTask.find(:all,:conditions=>"be_delete is null", :order =>'id desc').paginate :page=>params[:page], :per_page=>40

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @service_tasks }
    end
  end

  # GET /service_tasks/1
  # GET /service_tasks/1.xml
  def show
    @service_task = ServiceTask.find(params[:id])
    @task_entries=@service_task.task_entries.paginate :page=>params[:page], :per_page=>40
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @service_task }
    end
  end

  # GET /service_tasks/new
  # GET /service_tasks/new.xml
  def new
    @service_task = ServiceTask.new
    if params[:order_id]
    @order=Order.find(params[:order_id])
    end
    if params[:line_item_id]
    @line_item=LineItem.find(params[:line_item_id])
    @line_item_ids=params[:line_item_id] 
    end
    if params[:line_item_ids]
    @line_item_ids=params[:line_item_ids] 
    @line_items=LineItem.find(params[:line_item_ids])
    end
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @service_task }
    end
  end

  # GET /service_tasks/1/edit
  def edit
    @service_task = ServiceTask.find(params[:id])
  end

  # POST /service_tasks
  # POST /service_tasks.xml
  def create
    for line_item in params[:order][:line_item_ids]
    @service_task = ServiceTask.new(params[:service_task])
    @service_task.line_item_id=line_item
    @service_task.user_id=current_user.id
    @service_task.save
    @service_task.task_num="TASK"+"0"*(7 - @service_task.id.to_s.length) + @service_task.id.to_s
    @service_task.save
    end
    redirect_to :action=>"index"
  end

  # PUT /service_tasks/1
  # PUT /service_tasks/1.xml
  def update
    @service_task = ServiceTask.find(params[:id])

    respond_to do |format|
      if @service_task.update_attributes(params[:service_task])
        format.html { redirect_to(@service_task, :notice => 'ServiceTask was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @service_task.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /service_tasks/1
  # DELETE /service_tasks/1.xml
  def destroy
    @service_task = ServiceTask.find(params[:id])
    @service_task.destroy

    respond_to do |format|
      format.html { redirect_to(service_tasks_url) }
      format.xml  { head :ok }
    end
  end
end
