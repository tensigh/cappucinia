class CappuciniaController < ApplicationController
    before_action :set_message, only: [:edit, :update, :destroy]
    
  def index
    # @cappucinium = cappucnium.all
    @cappcunia = Cappucinium.new
    # @cappcunia = Cappucnia.new
  end
  def create
    @cappcunia = Cappucinium.new
    if @cappcunia.save
      redirect_to root_path , notice: 'メッセージを保存しました'
    else
       @cappcunia = Cappucinium.all
       flash.now[:alert] = "メッセージの保存に失敗しました。"
       render 'index'
    end
  end
end