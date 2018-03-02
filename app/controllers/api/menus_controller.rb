class Api::MenusController < ApplicationController

  # def index 
  #   @menus = Menu.all.includes(:drinks) 

  #   render :index
  # end 

  def show 
    @menu = Menu.find_by(store_id: params[:id])

    if @menu 
      render :show 
    else 
      render ["Store does not exist"], status: 404 
    end 
  end 

  private 

  def menu_params 
    params.require(:menu).permit(:store_id)
  end 
end
