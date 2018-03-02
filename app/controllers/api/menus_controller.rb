class Api::MenusController < ApplicationController

  def create
    @menu = Menu.new(menu_params)

    if @menu.save
      render :show 
    else 
      render json: @menu.errors.full_messages, status: 422
    end 
  end 

  private 

  def menu_params 
    params.require(:menu).permit(:store_id)
  end 
end
