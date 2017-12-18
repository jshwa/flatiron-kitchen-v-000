class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :edit, :update]

  def index
    @recipes = Recipe.all
  end

  def show
  end

  def new
    @recipe = Recipe.new
  end

  def create
    raise params.inspect
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      render 'show'
    else
      render 'new'
    end
  end

  def edit
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :ingredient_ids => [])
  end

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end
end
