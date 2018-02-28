class Api::DrinksController < ApplicationController
  before_action :require_logged_in

  def create
    @drink = Drink.new(drink_params)

    if @drink.save
      render :show 
    else 
      render json: @drink.errors.full_messages, status: 422
    end 
  end 

  def show
    @drinks = Drink.find_by(id: params[:id])
    
    if @drinks
      render :show 
    else 
      render ["Drink does not exist"], status: 404
    end 
  end 
  
  private 

  def drink_params
    params.require(:drink).permit(:menu_id, :name, :num_reviews, :avg_rating)
  end 
end