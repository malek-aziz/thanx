class Reward < ApplicationRecord
  validates :name, :points_required, presence: true
end
