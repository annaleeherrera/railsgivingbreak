class AddPersonToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :person_id, :integer
    add_column :recipes, :person_name, :string
  end
end
