class LeaveStylesController < ApplicationController
  # GET /leave_styles
  # GET /leave_styles.xml
  layout "admins"
  def index
    @leave_styles = LeaveStyle.paginate( :page => params[:page],:per_page => 30, :order => 'convert(id using gbk)')
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @leave_styles }
    end
  end

  # GET /leave_styles/1
  # GET /leave_styles/1.xml
  def show
    @leave_style = LeaveStyle.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @leave_style }
    end
  end

  # GET /leave_styles/new
  # GET /leave_styles/new.xml
  def new
    @leave_style = LeaveStyle.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @leave_style }
    end
  end

  # GET /leave_styles/1/edit
  def edit
    @leave_style = LeaveStyle.find(params[:id])
  end

  # POST /leave_styles
  # POST /leave_styles.xml
  def create
    @leave_style = LeaveStyle.new(params[:leave_style])

    respond_to do |format|
      if @leave_style.save
        flash[:notice] = 'LeaveStyle was successfully created.'
        format.html { redirect_to(@leave_style) }
        format.xml  { render :xml => @leave_style, :status => :created, :location => @leave_style }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @leave_style.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /leave_styles/1
  # PUT /leave_styles/1.xml
  def update
    @leave_style = LeaveStyle.find(params[:id])

    respond_to do |format|
      if @leave_style.update_attributes(params[:leave_style])
        flash[:notice] = 'LeaveStyle was successfully updated.'
        format.html { redirect_to(@leave_style) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @leave_style.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /leave_styles/1
  # DELETE /leave_styles/1.xml
  def destroy
    @leave_style = LeaveStyle.find(params[:id])
    @leave_style.destroy

    respond_to do |format|
      format.html { redirect_to(leave_styles_url) }
      format.xml  { head :ok }
    end
  end
end
