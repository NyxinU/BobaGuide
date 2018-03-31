class Api::DrinksController < ApplicationController
  # before_action :require_logged_in only: [:create]

  def index 
    @store = Store.find_by(store_id: params[:store_id])

    if @store
      render :index
    else 
      render ["Store does not exist"], status: 404
    end 
  end 

  def create
    @drink = Drink.new(drink_params)

    if @drink.save
      render :show 
    else 
      render json: @drink.errors.full_messages, status: 422
    end 
  end 

  def show
    @drink = Drink.find(params[:id])
    
    if @drink
      render :show 
    else 
      render ["Drink does not exist"], status: 404
    end 
  end 
  
  private 

  def drink_params
    params.require(:drink).permit(:store_id, :name, :num_reviews, :avg_rating)
  end 
end
