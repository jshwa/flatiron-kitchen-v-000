class IngredientsController < ApplicationController
  before_action :set_ingredient, only: [:show, :edit, :update]

  def index
    @ingredients = Ingredient.all
  end

  def show
  end

  def new
  end

  def edit
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:name, :recipe)
  end

  def set_recipe
    @ingredient = Ingredient.find(params[:id])
  end
end
