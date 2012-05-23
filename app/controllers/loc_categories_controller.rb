class LocCategoriesController < ApplicationController
  load_and_authorize_resource
  
  # commented out instance variables because load and authorize takes care of this for me
  
  def index
    @loc_categories = LocCategory.all
  end

  def show
    # @loc_category = LocCategory.find(params[:id])
  end

  def new
   #  @loc_category = LocCategory.new
  end

  def create
    # @loc_category = LocCategory.new(params[:loc_category])
    if @loc_category.save
      redirect_to loc_category_path, :notice => "Successfully created location category."
    else
      render :action => 'new'
    end
  end

  def edit
    # @loc_category = LocCategory.find(params[:id])
  end

  def update
    # @loc_category = LocCategory.find(params[:id])
    if @loc_category.update_attributes(params[:loc_category])
      redirect_to @loc_category, :notice  => "Successfully updated location category."
    else
      render :action => 'edit'
    end
  end

  def destroy
    # @loc_category = LocCategory.find(params[:id])
    @loc_category.destroy
    redirect_to loc_categories_url, :notice => "Successfully destroyed location category."
  end
end
