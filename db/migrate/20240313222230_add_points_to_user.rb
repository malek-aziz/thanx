class AddPointsToUser < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :points, :integer, default: 500
  end
end
