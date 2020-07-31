class CreateItemUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :item_users do |t|
      t.references :item, foreign_key: true,foreign_key:'user_id'
      t.references :user, foreign_key: true,foreign_key:'item_id'
      t.timestamps
    end
  end
end
