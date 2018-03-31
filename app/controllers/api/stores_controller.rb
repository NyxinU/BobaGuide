class Api::StoresController < ApplicationController
  require "json"
  require "http"
  require "optparse"


  # Constants, do not change these
  API_KEY = ''
  API_HOST = "https://api.yelp.com"
  SEARCH_PATH = "/v3/businesses/search"
  BUSINESS_PATH = "/v3/businesses/"  # trailing / because we append the business id to the path


  DEFAULT_BUSINESS_ID = "yelp-san-francisco"
  DEFAULT_TERM = "boba"
  DEFAULT_LOCATION = "San Francisco, CA"
  SEARCH_LIMIT = 5

  def create
    @store = Store.new(store_params)

    if @store.save
      render :show 
    else 
      render json: @store.errors.full_messages, status: 422
    end 
  end 

  def show 
    url = "#{API_HOST}#{BUSINESS_PATH}#{params[:id]}"

    response = HTTP.auth("Bearer #{API_KEY}").get(url)
    @store = response.parse
    render json: @store.to_json
  end 

  private 

  def store_params 
    params.require(:store).permit(:store_id)
  end 
end
