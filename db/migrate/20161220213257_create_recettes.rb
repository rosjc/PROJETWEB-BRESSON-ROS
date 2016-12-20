class CreateRecettes < ActiveRecord::Migration
  def change
    create_table :recettes do |t|
      t.string :titre
      t.text :description
      t.integer :id_user

      t.timestamps null: false
    end
  end
end
