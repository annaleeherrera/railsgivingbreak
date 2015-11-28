class PeopleController < ApplicationController
  def index
    @people = Person.all
    @person = Person.new
    @recipe = Recipe.new
  end

  def new
    @person = Person.find(id)
    redirect_to "/"
  end

  def recipes
    id = params[:id]
    @person = Person.find(id)
  end

  def show
    @person = Person.find(id)
  end

private
  def people_params
    params.require(:person).permit(:name)
  end
end
