class CommissionStylesController < ApplicationController
  # GET /commission_styles
  # GET /commission_styles.xml
   layout "admins"
  def index
   #@commission_styles = CommissionStyle.all
   # @commission_styles = CommissionStyle.find(:all,:conditions=>"be_delete is null").paginate :page=>params[:page], :per_page=>40
   @commission_styles = CommissionStyle.paginate( :page => params[:page],:per_page => 30, :order => 'convert(name using gbk)')

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @commission_styles }
    end
  end

  # GET /commission_styles/1
  # GET /commission_styles/1.xml
  def show
    @commission_style = CommissionStyle.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @commission_style }
    end
  end

  # GET /commission_styles/new
  # GET /commission_styles/new.xml
  def new
    @commission_style = CommissionStyle.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @commission_style }
    end
  end

  # GET /commission_styles/1/edit
  def edit
    @commission_style = CommissionStyle.find(params[:id])
  end

  # POST /commission_styles
  # POST /commission_styles.xml
  def create
    @commission_style = CommissionStyle.new(params[:commission_style])

    respond_to do |format|
      if @commission_style.save
        flash[:notice] = 'CommissionStyle was successfully created.'
        format.html { redirect_to(@commission_style) }
        format.xml  { render :xml => @commission_style, :status => :created, :location => @commission_style }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @commission_style.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /commission_styles/1
  # PUT /commission_styles/1.xml
  def update
    @commission_style = CommissionStyle.find(params[:id])

    respond_to do |format|
      if @commission_style.update_attributes(params[:commission_style])
        flash[:notice] = 'CommissionStyle was successfully updated.'
        format.html { redirect_to(@commission_style) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @commission_style.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /commission_styles/1
  # DELETE /commission_styles/1.xml
  def destroy
    @commission_style = CommissionStyle.find(params[:id])
    @commission_style.destroy

    respond_to do |format|
      format.html { redirect_to(commission_styles_url) }
      format.xml  { head :ok }
    end
  end
end
