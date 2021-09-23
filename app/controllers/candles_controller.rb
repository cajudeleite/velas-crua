class CandlesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @candles = Candle.all
  end

  def show
    @candle = Candle.find(params[:id])
  end

  def new
    @candle = Candle.new
  end

  def create
    @candle = Candle.new(candle_params)
    @candle.save
    redirect_to candle_path(@candle)
  end

  def edit
    @candle = Candle.find(params[:id])
  end

  def update
    @candle = Candle.find(params[:id])
    @candle.update(candle_params)
    redirect_to candle_path(@candle)
  end

  def destroy
    @candle = Candle.find(params[:id])
    @candle.destroy
    redirect_to candles_path
  end

  private

  def candle_params
    params.require(:candle).permit(:name, :stock, :description, :price, :photo)
  end
end
