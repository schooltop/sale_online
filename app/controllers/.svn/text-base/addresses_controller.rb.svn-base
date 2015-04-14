class AddressesController < ApplicationController
  
  before_filter :check_province_and_city,:only=>['new','edit_add']
  before_filter :auth_current_user,:only=>["edit","edit_add","delete_add","update"]
  def index
    @addresses = Address.all
  end


  def new
    @address = Address.new
    render :partial=>"form"
  end

  # GET /addresses/1/edit
  def edit
    render :partial=>"form"
  end
  def edit_add
    render :partial=>"form"
  end

  def create
    @address = Address.new(params[:address])
    @address.creater_id = current_user.id

      if @address.save
        update_default_address
        redirect_to( "/manage_address") 
      else
        validate_phone
      end
  end

  def update
      if @address.update_attributes(params[:address])
         update_default_address
         redirect_to( "/manage_address") 
      else
        validate_phone
      end
  end
  
  def update_default_address
    if @address.is_default == 1
       current_user.addresses.each{|a| a.update_attributes(:is_default => 0) unless a.id == @address.id}
    end
  end
  
  
  
  def delete_add
    @address.delete
    render :text=>""
  end
  
  def auth_current_user
    @address = Address.find(params[:id])
    auth_action_user @address,:creater_id
  end
end
