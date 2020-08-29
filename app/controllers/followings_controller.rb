class FollowingsController < ApplicationController
  def create
    Following.create(followerId: current_user.id, followedId: params[:followed_id])
    redirect_to user_path(params[:followed_id])
  end

  def destroy
    @followings = Following.find_friend_to_unfollow(current_user.id, params[:followed_id])
    @followings.destroy
    redirect_to user_path(params[:followed_id])
  end
end
