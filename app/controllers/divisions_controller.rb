class DivisionsController < ApplicationController
  load_and_authorize_resource
  
  # commented out instance variables because load and authorize takes care of this for me
  	
  def index
    @divisions = Division.all
  end

  def show
    # @division = Division.find(params[:id])
  end

  def new
    # @division = Division.new
  end

  def create
   #  @division = Division.new(params[:division])
    if @division.save
      redirect_to @division, :notice => "Successfully created division."
    else
      render :action => 'new'
    end
  end

  def edit
    # @division = Division.find(params[:id])
  end

  def update
    # @division = Division.find(params[:id])
    if @division.update_attributes(params[:division])
      redirect_to @division, :notice  => "Successfully updated division."
    else
      render :action => 'edit'
    end
  end

  def destroy
    # @division = Division.find(params[:id])
    @division.destroy
    redirect_to divisions_url, :notice => "Successfully destroyed division."
  end
end
