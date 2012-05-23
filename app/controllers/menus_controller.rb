class MenusController < ApplicationController
  load_and_authorize_resource

  def index
    @menus = Menu.all
  end

  def show
  end

  def new
    @loc_categories = LocCategory.all
  end

  def create
    if @menu.save
      redirect_to @menu, :notice => "Successfully created menu."
    else
      render :action => 'new'
    end
  end

  def edit
    @loc_categories = LocCategory.all
  end

  def update
     params[:location][:loc_category_ids] ||= []
    if @menu.update_attributes(params[:menu])
      redirect_to @menu, :notice  => "Successfully updated menu."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @menu.destroy
    redirect_to menus_url, :notice => "Successfully destroyed menu."
  end
end
