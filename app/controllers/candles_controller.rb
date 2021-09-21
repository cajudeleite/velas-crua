class CandlesController < ApplicationController
  def index
    @candles = Candle.all
  end
end
