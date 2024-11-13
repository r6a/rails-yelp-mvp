class RestaurantsController < ApplicationController
  def new
    @restaurant = Restaurants.new
  end

  #GET all restaurants
  def index
    @restaurant = Restaurants.all
  end

  def show
    @restaurant = Restaurants.find(params[:id])
  end

  def edit; end


end
