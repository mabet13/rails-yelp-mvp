class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]
  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
      #new_restaurant_path
    end
    #redirect_to new_restaurant_path
  end

  def update
    @restaurant.update(restaurant_params)
  end

  def destroy
    @restaurant.destroy
    redirect_to retaurants_path
  end

  def edit
  end

  def show
    @review = Review.new # where(params[:id])
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :category)
  end

  def set_restaurant
     @restaurant = Restaurant.find(params[:id])
  end
end
