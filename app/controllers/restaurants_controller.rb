class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @review = Review.new
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end


  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :category)
  end
end

# GET "restaurants"
# A visitor can see the list of all restaurants.

# GET "restaurants/new"
# POST "restaurants"
# A visitor can add a new restaurant, and be redirected to the show view of that new restaurant.

# GET "restaurants/38"
# A visitor can see the details of a restaurant, with all the reviews related to the restaurant.
