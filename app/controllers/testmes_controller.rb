class TestmesController < ApplicationController
  # GET /testmes
  # GET /testmes.xml
  def index
    @testmes = Testme.find_by_sql("select * from testmes")
    

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @testmes }
    end
  end

  # GET /testmes/1
  # GET /testmes/1.xml
  def show
    @testme = Testme.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @testme }
    end
  end

  # GET /testmes/new
  # GET /testmes/new.xml
  def new
    @testme = Testme.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @testme }
    end
  end

  # GET /testmes/1/edit
  def edit
    @testme = Testme.find(params[:id])
  end

  # POST /testmes
  # POST /testmes.xml
  def create
    @testme = Testme.new(params[:testme])
    respond_to do |format|
      if @testme.save
        format.html { redirect_to(@testme, :notice => 'Testme was successfully created.') }
        format.xml  { render :xml => @testme, :status => :created, :location => @testme }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @testme.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /testmes/1
  # PUT /testmes/1.xml
  def update
    @testme = Testme.find(params[:id])

    respond_to do |format|
      if @testme.update_attributes(params[:testme])
        format.html { redirect_to(@testme, :notice => 'Testme was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @testme.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /testmes/1
  # DELETE /testmes/1.xml
  def destroy
    @testme = Testme.find(params[:id])
    @testme.destroy

    respond_to do |format|
      format.html { redirect_to(testmes_url) }
      format.xml  { head :ok }
    end
  end
end
