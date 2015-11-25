class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :dish
      t.string :ingredients
      t.string :directions

      t.timestamps null: false
    end
  end
end
