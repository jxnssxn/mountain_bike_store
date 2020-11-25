class Api::BikesController < ApplicationController
  def index

    @bikes = HTTP.get("http://newsapi.org/v2/everything?q=bitcoin&from=2020-10-25&sortBy=publishedAt&apiKey=#{Rails.application.credentials.news_api[:api_key]}")

    render 'index.json.jb'
  end
end
