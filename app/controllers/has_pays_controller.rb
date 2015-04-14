class HasPaysController < ApplicationController
  # GET /has_pays
  # GET /has_pays.xml
  def index
    @has_pays = HasPay.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @has_pays }
    end
  end

  # GET /has_pays/1
  # GET /has_pays/1.xml
  def show
    @has_pay = HasPay.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @has_pay }
    end
  end

  # GET /has_pays/new
  # GET /has_pays/new.xml
  def new
    @has_pay = HasPay.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @has_pay }
    end
  end

  # GET /has_pays/1/edit
  def edit
    @has_pay = HasPay.find(params[:id])
  end

  # POST /has_pays
  # POST /has_pays.xml
  def create
    @has_pay = HasPay.new(params[:has_pay])

    respond_to do |format|
      if @has_pay.save
        format.html { redirect_to(@has_pay, :notice => 'HasPay was successfully created.') }
        format.xml  { render :xml => @has_pay, :status => :created, :location => @has_pay }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @has_pay.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /has_pays/1
  # PUT /has_pays/1.xml
  def update
    @has_pay = HasPay.find(params[:id])

    respond_to do |format|
      if @has_pay.update_attributes(params[:has_pay])
        format.html { redirect_to(@has_pay, :notice => 'HasPay was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @has_pay.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /has_pays/1
  # DELETE /has_pays/1.xml
  def destroy
    @has_pay = HasPay.find(params[:id])
    @has_pay.destroy

    respond_to do |format|
      format.html { redirect_to(has_pays_url) }
      format.xml  { head :ok }
    end
  end
end
