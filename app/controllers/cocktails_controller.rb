class CocktailsController < ApplicationController
  before_action :find_cocktail, only: [:show]
  def index
    @cocktails = Cocktail.all
  end

  def show

  end

  def new
  end

  def create
    @cocktail = Cocktail.new(restaurant_params)
    @cocktail.save
    redirect_to @restaurant

  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def find_cocktail
    @cocktail = Cocktail.find(params[:id])
  end
end
