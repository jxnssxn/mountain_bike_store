class Api::BikesController < ApplicationController

  def index
    # @bikes = HTTP.get("http://newsapi.org/v2/everything?q=bitcoin&from=2020-10-25&sortBy=publishedAt&apiKey=#{Rails.application.credentials.news_api[:api_key]}")
    @bikes = Bike.all
    render 'index.json.jb'
  end

  def show
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

  def update
    @bike = Bike.find_by(id: params[:id])
    @bike.id = params[:id]
    @bike.name = params[:name]
    @bike.price = params[:price]
    @bike.image_url = params[:image_url]
    @bike.description = params[:description]
    @bike.save
    render 'show.json.jb'
  end
  
  def destroy
    @bike = Bike.find_by(id: params[:id])
    @bike.destroy
    render json: {message: "Bike has been removed"}
  end


end
