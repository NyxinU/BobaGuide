class Api::MenusController < ApplicationController
  def show 
    @menu = Menu.find_by(store_id: params[:store_id])

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
