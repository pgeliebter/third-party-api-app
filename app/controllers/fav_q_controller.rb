class FavQController < ApplicationController
  def index
    response = HTTP[Authorization: "Token #{Rails.application.credentials.favq[:api_key]}"].get("https://favqs.com/api/quotes/?filter=#{params[:topic]}")
    render json: response.parse(:json), status: response.status
  end
end
