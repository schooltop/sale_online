class MyaresController < ApplicationController
  # GET /myares
  # GET /myares.xml
  def index
    @myares = Myare.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @myares }
    end
  end

  # GET /myares/1
  # GET /myares/1.xml
  def show
    @myare = Myare.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @myare }
    end
  end

  # GET /myares/new
  # GET /myares/new.xml
  def new
    @myare = Myare.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @myare }
    end
  end

  # GET /myares/1/edit
  def edit
    @myare = Myare.find(params[:id])
  end

  # POST /myares
  # POST /myares.xml
  def create
    @myare = Myare.new(params[:myare])

    respond_to do |format|
      if @myare.save
        format.html { redirect_to(@myare, :notice => 'Myare was successfully created.') }
        format.xml  { render :xml => @myare, :status => :created, :location => @myare }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @myare.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /myares/1
  # PUT /myares/1.xml
  def update
    @myare = Myare.find(params[:id])

    respond_to do |format|
      if @myare.update_attributes(params[:myare])
        format.html { redirect_to(@myare, :notice => 'Myare was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @myare.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /myares/1
  # DELETE /myares/1.xml
  def destroy
    @myare = Myare.find(params[:id])
    @myare.destroy

    respond_to do |format|
      format.html { redirect_to(myares_url) }
      format.xml  { head :ok }
    end
  end
end
