class ProfilesController < ApplicationController
  def show
  	@user = User.find(params[:id])
  end

  def index
  	@users = User.all
  end

  def feed
  	@tweets = Tweet.where("user_id in (?) OR user_id =?",
  	current_user.friend_ids, current_user).order('created_at DESC')
  end
end


