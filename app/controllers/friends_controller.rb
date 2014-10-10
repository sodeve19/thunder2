class FriendsController < ApplicationController
  before_action :authenticate_user!

  def index
    pick_random_friend
    # render :index (default behavior)
  end

  def like
    liked = params[:liked] == "true"
    current_user.likes.create(friend_id: params[:id], liked: liked)

    pick_random_friend
    render :index
  end

  private

  def pick_random_friend
    @friend = current_user.random_friend
  end
end
