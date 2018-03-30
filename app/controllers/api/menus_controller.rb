class Api::MenusController < ApplicationController
  require "json"
  require "http"
  require "optparse"


  # Constants, do not change these
  API_KEY = '467mR1Rp6HH3uwrJdQulLhSstM1SMXY_LJyCKZD_DgVuYPUTVRh9YFbXES9vrUOiVmX32U04PYyMK7c38tzd0JNaIyny_pdVf0dnrJNTI6ak6cpoCwkOl2QlJVqOWnYx'
  API_HOST = "https://api.yelp.com"
  SEARCH_PATH = "/v3/businesses/search"
  BUSINESS_PATH = "/v3/businesses/"  # trailing / because we append the business id to the path


  DEFAULT_BUSINESS_ID = "yelp-san-francisco"
  DEFAULT_TERM = "boba"
  DEFAULT_LOCATION = "San Francisco, CA"
  SEARCH_LIMIT = 5

  def create
    @menu = Menu.new(menu_params)

    if @menu.save
      render :show 
    else 
      render json: @menu.errors.full_messages, status: 422
    end 
  end 

  def show 
    url = "#{API_HOST}#{BUSINESS_PATH}#{params[:id]}"

    response = HTTP.auth("Bearer #{API_KEY}").get(url)
    @menu = response.parse
    render json: @menu.to_json
  end 

  private 

  def menu_params 
    params.require(:menu).permit(:store_id)
  end 
end
