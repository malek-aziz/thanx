class CreateRedemption < ActiveRecord::Migration[7.1]
  def change
    create_table :redemptions do |t|
      t.references :user, null: false, foreign_key: true
      t.references :reward, null: false, foreign_key: true
      t.datetime :redeemed_at, null: false

      t.timestamps
    end
  end
end
