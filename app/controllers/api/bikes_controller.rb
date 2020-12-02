class Api::BikesController < ApplicationController

  def index
    # @bikes = HTTP.get("http://newsapi.org/v2/everything?q=bitcoin&from=2020-10-25&sortBy=publishedAt&apiKey=#{Rails.application.credentials.news_api[:api_key]}")
    @bikes = Bike.all
    render 'index.json.jb'
  end

  def s
    @bike = Bike.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create

    @bike = Bike.new(
      id: params[:id],
      name: params[:name],
      price: params[:price],
      image_url: params[:image_url],
      description: params[:description]
    )
    @bike.save
    render "show.json.jb"
  end


end
