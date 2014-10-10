class FriendsController < ApplicationController
  before_action :authenticate_user!

  def index
    @friend = current_user.random_friend
  end
end
