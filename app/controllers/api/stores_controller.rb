class Api::StoresController < ApplicationController
   require "json"

  # def create
  #   @store = Store.new(store_params)

  #   if @store.save
  #     render :show 
  #   else 
  #     render json: @store.errors.full_messages, status: 422
  #   end 
  # end 

  def show
    @store = Store.find_by(yelp_store_id: params[:id])

    if @store
      store = @store.get_store_info(@store.yelp_store_id)
      render json: store.to_json
    else 
      render json: ["Store does not exist"], status: 404
    end  


    
    # if @store['error']
    #   render json: ['Business not found'], status: 404
    # else 
    #   render json: @store.to_json
    # end 
  end 

  private 

  def store_params 
    params.require(:store).permit(:yelp_store_id)
  end 
end
