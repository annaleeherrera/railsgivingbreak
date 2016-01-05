class PeopleController < ApplicationController
  def index
    @people = Person.all

  end

  def recipes
    id = params[:id]
    @person = Person.find(id)
  end

  def show
    @person = Person.find(id)
  end

  def new
    @title = "Add a Chef"
    @person = Person.new
    @action = :create
  end

  def create
    @person = Person.create(people_params)
    redirect_to people_path
  end

  def edit
    @title = "Edit"
    @person = Person.find(params[:id])
    @action = :update
  end

  def update
    Person.update(params[:id], people_params)
    redirect_to people_path
  end

  def destroy
    Person.destroy(params[:id])
    redirect_to people_path
  end

private
  def people_params
    params.require(:person).permit(:name, :image)
  end
end
