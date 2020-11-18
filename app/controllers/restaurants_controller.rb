class RestaurantsController < ApplicationController
  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.create(restaurants_params)
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def index
    @restaurants = Restaurant.all
  end

  private

  def restaurants_params
    params.require(@restaurant).permit(:name, :address, :phone_number, :category)
  end
end
