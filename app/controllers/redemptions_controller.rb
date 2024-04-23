class RedemptionsController < ApplicationController
  def index
    @user = User.find_by(id: params[:user_id])

    if @user.present?
      @redemptions = @user.redemptions.includes(:reward).map do |redemption|
        redemption.attributes.merge(reward: redemption.reward.attributes)
      end

      puts @redemptions
      render json: @redemptions
    else
      render json: { error: 'User does not exist!' }, status: :not_found
    end
  end

  # redeem a reward
  def create
    @user = User.find(params[:user_id])
    @reward = Reward.find(params[:reward_id])

    if @user.redeem_reward(@reward)
      render json: { message: 'Reward redeemed successfully.' }, status: :created
    else
      render json: { error: 'Not enough points!' }, status: :unprocessable_entity
    end
  end
end
