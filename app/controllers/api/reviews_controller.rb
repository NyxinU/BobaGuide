class Api::ReviewsController < ApplicationController
  
  def index 
    @drink = Drink.find_by(id: params[:drink_id])

    if @drink 
      render :index 
    else 
      render ["Drink does not exist"],  status: 404 
    end 
  end 

  def create 
    @review = Review.new(review_params)

    if @review.save 
      render :show 
    else 
      render json: @review.errors.full_messages, status: 422
    end 
  end 

  def show 
    @review = Review.find(params[:id])

    if @review
      render :show
    else 
      render ["Review does not exist"], status: 404
    end 
  end 

  def update 
    @review = Review.find(params[:id])

    if @review.update_attributes(review_params)
      render :show 
    else 
      render json: @reviews.erros.full_messages, status: 422 
    end 
  end 

  def destroy 
    review = Review.find(params[:id])
    review.destroy
  end 

  private 

  def review_params 
    params.require(:review).permit(:id, :drink_id, :user_id, :rating, :body, :sugar, :ice, :toppings, :img_url, :hot, :public)
  end 

end
