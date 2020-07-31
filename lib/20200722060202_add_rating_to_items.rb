class AddRatingToItems < ActiveRecord::Migration[6.0]
  def change
    # add_column :items, :rating, :float
    create_table :item_users do |t|
      t.float :rating,null:false
      t.references :item, foreign_key: true
      t.timestamps
    end
  end
end
