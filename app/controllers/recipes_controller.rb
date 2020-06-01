class RecipesController < ApplicationController
  before_action :authorize, only: [:new]

  def index
    @recipes = RecipeService.get_meal()
  end

  def new
    @recipes = RecipeService.get_meal()
    render :new
  end


end