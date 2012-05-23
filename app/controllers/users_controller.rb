class UsersController < ApplicationController
  load_and_authorize_resource
  
  # commented out instance variables because load and authorize takes care of this for me
  
  def index
    @users = User.all
  end

  def show
    # @user = User.find(params[:id])
    @users = User.all
  end

  def new
    @user = User.new
    @teams = Team.all
  end

  def create
    # @user = User.new(params[:user])
    if @user.save
      if params[:user][:avatar].present?
      	render :crop
      else
      	redirect_to @user, :notice => "Successfully created user."
      end
    else
      render :action => 'new'
    end
  end

  def edit
    # @user = User.find(params[:id])
    @teams = Team.all
  end

  def update
    # @user = User.find(params[:id])
    
    if params[:user][:password].blank?
	  params[:user].delete(:password)
	  params[:user].delete(:password_confirmation)
	end
	
    if @user.update_attributes(params[:user])
      if params[:user][:avatar].present?
      	render :crop
      else
      	redirect_to @user, :notice  => "Successfully updated user."
      end
    else
      render :action => 'edit'
    end
  end

  def destroy
    # @user = User.find(params[:id])
    @user.destroy
    redirect_to users_url, :notice => "Successfully destroyed user."
  end
end
