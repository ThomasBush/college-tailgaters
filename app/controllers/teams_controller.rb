class TeamsController < ApplicationController
  load_and_authorize_resource
  
  # commented out instance variables because load and authorize takes care of this for me
  
  def index
    @teams = Team.all
  end

  def show
    # @team = Team.find(params[:id])
  end

  def new
    @team = Team.new
    @conferences = Conference.all
  end

  def create
    # @team = Team.new(params[:team])
    if @team.save
      redirect_to @team, :notice => "Successfully created team."
    else
      render :action => 'new'
    end
  end

  def edit
    # @team = Team.find(params[:id])
    @conferences = Conference.all
  end

  def update
    # @team = Team.find(params[:id])
    if @team.update_attributes(params[:team])
      redirect_to @team, :notice  => "Successfully updated team."
    else
      render :action => 'edit'
    end
  end

  def destroy
    # @team = Team.find(params[:id])
    @team.destroy
    redirect_to teams_url, :notice => "Successfully destroyed team."
  end
end
