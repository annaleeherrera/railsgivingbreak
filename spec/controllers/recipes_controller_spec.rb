require 'rails_helper'

RSpec.describe RecipesController, type: :controller do
  let(:params) do
    { recipe: {
        dish: "Turkey",
        ingredients: "turkey",
        directions: "fry"}
    }
  end
  describe "GET 'index'" do
    it "is successful" do
      get :index
      expect(response.status).to eq 200
    end
  end

  describe "GET 'new'" do
    it "is successful" do
      get :new
      expect(response.status).to eq 200
      expect(subject).to render_template :new
    end
  end

  describe "GET 'home'" do
    it "is successful" do
      get :home
      expect(response.status).to eq 200
      expect(subject).to render_template :home
    end
  end

  describe "POST 'create'" do
    it "successful create redirects to index" do
      post :create, params
      expect(Recipe.all.length).to eq 1
      expect(response.status).to eq 302
      expect(subject).to redirect_to root_path
    end
  end

  describe "GET 'show'" do
    it "successful show renders show page" do
      test_recipe = Recipe.create(params[:recipe])
      expect(Recipe.all.length).to eq 1
      get :show, id: test_recipe.id
      expect(response.status).to eq 200
      expect(subject).to render_template :show
    end
  end

  describe "GET 'edit'" do
    let(:recipe) do
      Recipe.create(dish: "Spaghetti")
    end
    it "is successful" do
      get :edit, id: recipe.id
      expect(response.status).to eq 200
      expect(subject).to render_template :edit
    end
  end

  describe "PATCH 'update'" do
    let(:recipe) do
      Recipe.create(dish: "Cake")
    end

    let(:good_params) do
      {
          recipe:{
            dish: "Chocolate Cake"
          },
          id: recipe.id
      }
    end

    it "redirects to /recipes/" do
      patch :update, good_params
      expect(subject).to redirect_to "/recipes/"
    end
  end

  describe "DELETE 'destroy'" do
    let(:recipe) do
      Recipe.create(dish: "Sushi")
    end

    it "redirects to recipes index page" do
      delete :destroy, id: recipe.id
      expect(subject).to redirect_to(recipes_path)
    end
  end

end
