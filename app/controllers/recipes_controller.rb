class RecipesController < ApplicationController
  def index

  end

  def home
    @recipes = Recipe.all
  end


  def new

  end

  def create
    @recipe = Recipe.create(recipe_params)
    @person = @recipe.person
    redirect_to "/"
  end

  def show
    id = params[:id]
    @recipe = Recipe.find(id)
  end

  def edit
    id = params[:id]
    @recipe = Recipe.find(id)
  end

  def update
    @person = Person.new
    id = params[:id]
    recipe = Recipe.find(id)
    recipe.update_attributes(recipe_params)
    redirect_to "/recipes/"
  end

  def destroy
    Recipe.destroy(params[:id])
    redirect_to "/recipes"
  end

private
  def recipe_params
    params.require(:recipe).permit(:dish, :ingredients, :directions, :person_id, :image)
  end
end
