class RentCartsController < ApplicationController
  # GET /rent_carts
  # GET /rent_carts.xml
  layout "admins"
  def index
    @rent_carts = RentCart.find(:all,:conditions=>"be_delete is null").paginate :page=>params[:page], :per_page=>40

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @rent_carts }
    end
  end

  # GET /rent_carts/1
  # GET /rent_carts/1.xml
  def show
    @rent_cart = RentCart.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @rent_cart }
    end
  end

  # GET /rent_carts/new
  # GET /rent_carts/new.xml
  def new
    @rent_cart = RentCart.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @rent_cart }
    end
  end

  # GET /rent_carts/1/edit
  def edit
    @rent_cart = RentCart.find(params[:id])
  end

  # POST /rent_carts
  # POST /rent_carts.xml
  def create
    @rent_cart = RentCart.new(params[:rent_cart])

    respond_to do |format|
      if @rent_cart.save
        format.html { redirect_to(@rent_cart, :notice => 'RentCart was successfully created.') }
        format.xml  { render :xml => @rent_cart, :status => :created, :location => @rent_cart }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @rent_cart.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /rent_carts/1
  # PUT /rent_carts/1.xml
  def update
    @rent_cart = RentCart.find(params[:id])

    respond_to do |format|
      if @rent_cart.update_attributes(params[:rent_cart])
        format.html { redirect_to(@rent_cart, :notice => 'RentCart was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @rent_cart.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /rent_carts/1
  # DELETE /rent_carts/1.xml
  def destroy
    @rent_cart = RentCart.find(params[:id])
    @rent_cart.destroy

    respond_to do |format|
      format.html { redirect_to(rent_carts_url) }
      format.xml  { head :ok }
    end
  end
end
