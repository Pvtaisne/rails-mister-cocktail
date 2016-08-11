class DosesController < ApplicationController
  def index
  end

  def show
  end

  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = @cocktail.doses.build(review_params)
    @dose.save
    redirect_to @cocktail
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

   def review_params
    params.require(:dose).permit(:cocktail, :ingredient_id, :description)
  end
end
