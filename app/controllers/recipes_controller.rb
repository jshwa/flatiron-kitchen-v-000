class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :edit, :update]

  def index
    @recipes = Recipe.all
  end

  def show
  end

  def new
  end

  def edit
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :ingredient)
  end

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end
end
