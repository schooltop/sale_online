class TaskEntriesController < ApplicationController
  # GET /task_entries
  # GET /task_entries.xml
  def index
    @task_entries = TaskEntry.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @task_entries }
    end
  end

  # GET /task_entries/1
  # GET /task_entries/1.xml
  def show
    @task_entry = TaskEntry.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @task_entry }
    end
  end

  # GET /task_entries/new
  # GET /task_entries/new.xml
  def new
    @task_entry = TaskEntry.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @task_entry }
    end
  end

  # GET /task_entries/1/edit
  def edit
    @task_entry = TaskEntry.find(params[:id])
  end

  def task_entry_into#保存任务调度分配
   @service_task=ServiceTask.find(params[:service_task_id])
    for i in 1..20
       a="work"+i.to_s
       c="company"+i.to_s
       d="description"+i.to_s
       if params[a]&&params[a][0].to_i&&params[a][0].to_i>0
         task_entries=TaskEntry.new
         task_entries.service_task_id=@service_task.id
         task_entries.work_id=params[a][0].to_i
         task_entries.user_id=current_user.id
         task_entries.company_id=params[c][0].to_i
         task_entries.description=params[d].to_s
         task_entries.save
       end
     end
    redirect_to :controller=>"service_tasks" ,:action=>"show" ,:id=>params[:service_task_id]
  end

  # POST /task_entries
  # POST /task_entries.xml
  def create
    @task_entry = TaskEntry.new(params[:task_entry])

    respond_to do |format|
      if @task_entry.save
        format.html { redirect_to(@task_entry, :notice => 'TaskEntry was successfully created.') }
        format.xml  { render :xml => @task_entry, :status => :created, :location => @task_entry }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @task_entry.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /task_entries/1
  # PUT /task_entries/1.xml
  def update
    @task_entry = TaskEntry.find(params[:id])

    respond_to do |format|
      if @task_entry.update_attributes(params[:task_entry])
        format.html { redirect_to(@task_entry, :notice => 'TaskEntry was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @task_entry.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /task_entries/1
  # DELETE /task_entries/1.xml
  def destroy
    @task_entry = TaskEntry.find(params[:id])
    @task_entry.destroy

    respond_to do |format|
      format.html { redirect_to(task_entries_url) }
      format.xml  { head :ok }
    end
  end
end
