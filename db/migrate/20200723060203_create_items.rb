class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name, null: false
      t.string :introduce,null: false
      t.integer :category, null:false,default: 0
      t.string :brand,null: false
      t.string :image,null: false
      t.float :rating,null: false
      t.string :price,null: false
      t.references :user,foreign_key: true
      t.timestamps
    end
  end
end
