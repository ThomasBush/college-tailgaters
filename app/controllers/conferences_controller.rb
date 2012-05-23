class ConferencesController < ApplicationController
  load_and_authorize_resource
  
  # commented out instance variables because load and authorize takes care of this for me
  
  def index
    @conferences = Conference.all
  end

  def show
    # @conference = Conference.find(params[:id])
  end

  def new
    # @conference = Conference.new
    @divisions = Division.all
  end

  def create
    # @conference = Conference.new(params[:conference])
    if @conference.save
      redirect_to @conference, :notice => "Successfully created conference."
    else
      render :action => 'new'
    end
  end

  def edit
    # @conference = Conference.find(params[:id])
    @divisions = Division.all
  end

  def update
    # @conference = Conference.find(params[:id])
    if @conference.update_attributes(params[:conference])
      redirect_to @conference, :notice  => "Successfully updated conference."
    else
      render :action => 'edit'
    end
  end

  def destroy
    # @conference = Conference.find(params[:id])
    @conference.destroy
    redirect_to conferences_url, :notice => "Successfully destroyed conference."
  end
end
