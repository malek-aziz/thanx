class RewardsController < ApplicationController
  def index
    @rewards = Reward.all
    return render json: @rewards
  end
end
