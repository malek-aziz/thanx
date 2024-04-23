class CreateReward < ActiveRecord::Migration[7.1]
  def change
    create_table :rewards do |t|
      t.string :name, null: false
      t.integer :points_required, null: false

      t.timestamps
    end
  end
end
