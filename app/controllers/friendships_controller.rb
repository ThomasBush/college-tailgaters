class FriendshipsController < ApplicationController


  def index
    @users = User.all
    @friends = current_user.friends
    @pending_invited_by = current_user.pending_invited_by
    @pending_invited = current_user.pending_invited
  end

  def create
    @Friend = User.find(params[:user_id])
    @friendship_created = current_user.invite(@Friend)
    if @friendship_created
      flash.now[:notice] = "Your have requested a friendship with #{@friend}"
    end
  end

  def approve
    @Friend = User.find(params[:user_id])
    @friendship_approved = current_user.approve(@Friend)
    @friends = current_user.friends
    @pending_invited_by = current_user.pending_invited_by
    flash.now[:notice] = "You are now friends with #{@friend.email}"
  end


  def update
    inviter = User.find_by_id(params[:id])
    if current_user.approve inviter
      redirect_to new_friend_path, :notice => "Successfully confirmed friend!"
    else
      redirect_to new_friend_path, :notice => "Sorry! Could not confirm friend!"
    end
  end
  
  def destroy
    user = User.find_by_id(params[:id])
    if current_user.remove_friendship user
      redirect_to friends_path, :notice => "Successfully removed friend!"
    else
      redirect_to friends_path, :notice => "Sorry, couldn't remove friend!"
    end
  end 
end
