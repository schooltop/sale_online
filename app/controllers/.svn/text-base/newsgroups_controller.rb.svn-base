class NewsgroupsController < ApplicationController
  before_filter :login_required,:except=>["show","list","shownews","index"]
  before_filter :admin_required,:only=>['new','edit','update','create','destroy']
  layout "admin"

  def new
    @newsgroup = Newsgroup.new
    render :partial=>"form"
  end

  def create
    @newsgroup = Newsgroup.new(params[:newsgroup])
    if @newsgroup.save
      redirect_to "/manage_newsgroups"
    else
      render :action => 'new'
    end
  end

  def edit_add
    edit
    render :partial=>"form"
  end
  def edit
    @newsgroup = Newsgroup.find(params[:id])
  end

  def update
    @newsgroup = Newsgroup.find(params[:id])
    if @newsgroup.update_attributes(params[:newsgroup])
      redirect_to "/manage_newsgroups"
    else
      render :action => 'edit'
    end
  end

  def destroy
    Newsgroup.find(params[:id]).destroy
    redirect_to :action => 'list'
  end
  
  
end
