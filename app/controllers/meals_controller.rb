class MealsController < ApplicationController

  #get /meals
  def index
    @meals = Meal.new
  end

  #get /meals/show
  def show
    @meal = Meal.find(params[:id])
  end

  #get /meals/new
  def new
    @meal = Meal.new
  end

  #post /meals/create
  def create
    meal = Meal.create(meal_params)
    redirect_to meal_path(meal)
  end

  #get /meals/edit
  def edit
    @meal = Meal.find(params[:id])
  end

  #put /meals/update
  def update
    meal = Meal.find(params[:id])
    meal.update(meal_params)

      if meal.save!
        redirect_to meal_path(meal)
      end
  end

  #delete /meals/destroy
  def destroy
    @meal = Meal.find(params[:id])
    @meal.destroy
    redirect_to meal_path
  end

  private 

  def meal_params
    params.require(:meal).permit(:main, :side)
  end

end
