class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :redemptions

  def redeem_reward(reward)
    ActiveRecord::Base.transaction do
      redemptions.create!(reward: reward, redeemed_at: Time.current)
      update!(points: points - reward.points_required)
    end if points >= reward.points_required
  end
end
