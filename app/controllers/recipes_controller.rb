class RecipesController < ApplicationController
  def index
    @recipe = Recipe.new
    @recipes = Recipe.all
    @people = Person.all
  end

  def home
    @recipe = Recipe.new
    @recipes = Recipe.all
    @people = Person.all
  end


  def new
    @person = Person.new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.create(recipe_params)
    @person = @recipe.person
    redirect_to "/"
  end

  def show
    id = params[:id]
    @recipe = Recipe.find(id)
    @person = Person.new
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
    params.require(:recipe).permit(:dish, :ingredients, :directions, :person_id)
  end
end
