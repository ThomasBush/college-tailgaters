class LocationsController < ApplicationController
  load_and_authorize_resource
  
  # commented out instance variables because load and authorize takes care of this for me
  
  def index
    @locations = Location.all
  end

  def show
    # @location = Location.find(params[:id])
  end

  def new
    # @location = Location.new
    @loc_categories = LocCategory.all
  end

  def create
    # @location = Location.new(params[:location])
    if @location.save
      redirect_to @location, :notice => "Successfully created location."
    else
      render :action => 'new'
    end
  end

  def edit
    # @location = Location.find(params[:id])
    @loc_categories = LocCategory.all
  end

  def update
    params[:location][:loc_category_ids] ||= []
    # @location = Location.find(params[:id])
    if @location.update_attributes(params[:location])
      redirect_to @location, :notice  => "Successfully updated location."
    else
      render :action => 'edit'
    end
  end

  def destroy
    # @location = Location.find(params[:id])
    @location.destroy
    redirect_to locations_url, :notice => "Successfully destroyed location."
  end
end
