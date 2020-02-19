class StaticPagesController < ApplicationController
  def home
    @stocks = ["AAPL","GOOG","AMZN","TSLA","NFLX"]
  end

  def help
  end

  def about
  end
end
