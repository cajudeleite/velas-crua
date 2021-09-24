class CandlesController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @candles = policy_scope(Candle).order(created_at: :desc)
  end

  def show
    @candle = Candle.find(params[:id])
    authorize @candle
  end

  def new
    @candle = Candle.new
    authorize @candle
  end

  def create
    @candle = Candle.new(candle_params)
    authorize @candle
    if @candle.save
      redirect_to candle_path(@candle), notice: "sua vela foi criada com sucesso"
    else
      render :new
    end
  end

  def edit
    @candle = Candle.find(params[:id])
    authorize @candle
  end

  def update
    @candle = Candle.find(params[:id])
    authorize @candle
    if @candle.update(candle_params)
      redirect_to candle_path(@candle), notice: "sua vela foi atualizada com sucesso"
    else
      render :edit
    end
  end

  def destroy
    @candle = Candle.find(params[:id])
    authorize @candle
    @candle.destroy
    redirect_to candles_path, notice: "sua vela foi deletada com sucesso"
  end

  private

  def candle_params
    params.require(:candle).permit(:name, :stock, :description, :price, :photo)
  end
end
