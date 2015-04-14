class DostylesController < ApplicationController
  # GET /dostyles
  # GET /dostyles.xml
  def index
    @dostyles = Dostyle.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @dostyles }
    end
  end

  # GET /dostyles/1
  # GET /dostyles/1.xml
  def show
    @dostyle = Dostyle.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @dostyle }
    end
  end

  # GET /dostyles/new
  # GET /dostyles/new.xml
  def new
    @dostyle = Dostyle.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @dostyle }
    end
  end

  # GET /dostyles/1/edit
  def edit
    @dostyle = Dostyle.find(params[:id])
  end

  # POST /dostyles
  # POST /dostyles.xml
  def create
    @dostyle = Dostyle.new(params[:dostyle])

    respond_to do |format|
      if @dostyle.save
        format.html { redirect_to(@dostyle, :notice => 'Dostyle was successfully created.') }
        format.xml  { render :xml => @dostyle, :status => :created, :location => @dostyle }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @dostyle.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /dostyles/1
  # PUT /dostyles/1.xml
  def update
    @dostyle = Dostyle.find(params[:id])

    respond_to do |format|
      if @dostyle.update_attributes(params[:dostyle])
        format.html { redirect_to(@dostyle, :notice => 'Dostyle was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @dostyle.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /dostyles/1
  # DELETE /dostyles/1.xml
  def destroy
    @dostyle = Dostyle.find(params[:id])
    @dostyle.destroy

    respond_to do |format|
      format.html { redirect_to(dostyles_url) }
      format.xml  { head :ok }
    end
  end
end
