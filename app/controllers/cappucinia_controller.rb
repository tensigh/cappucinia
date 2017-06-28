class CappuciniaController < ApplicationController
    before_action :set_message, only: [:edit, :update, :destroy]
    
  def index
    @cappucinias = Cappucinium.all
    @cappucunia = Cappucinium.new
  end
  
  def create
    @cappucunia = Cappucinium.new(cappucunia_params)
    if @cappucunia.save
      redirect_to root_path, notice: 'メッセージを保存しました'
    else
       @cappucunias = Restaurants.all
       flash.now[:alert] = "メッセージの保存に失敗しました。"
       render 'index'
    end
  end
  
private
  def cappucunia_params
    params.require(:cappucinium).permit(:restaurantName, :body)
  end
end