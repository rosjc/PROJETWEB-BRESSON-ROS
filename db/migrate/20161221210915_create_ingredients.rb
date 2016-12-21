class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :nom
      t.belongs_to :recette, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
