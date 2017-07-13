class CappuciniaController < ApplicationController
   before_action :ensure_login, only: [:create]
   
    
  def index
    @cappucinias = Cappucinium.all
    @cappucunia = Cappucinium.new
  end
  
  def create
    @cappucunia = Cappucinium.new(cappucunia_params)
    if @cappucunia.save
      redirect_to root_path
      flash[:notice] = '店舗追加が出来ました'
    else
       @cappucunias = Cappucinium.all
       flash.now[:alert] = "メッセージの保存に失敗しました。"
       render 'index'
    end
  end
  
private
  def cappucunia_params
    params.require(:cappucinium).permit(:restaurantName, :restaurantAdd, :restaurantPhone, :restaurantWebsite, :productName, :productPrice, :productRating, :comments)
  end
end