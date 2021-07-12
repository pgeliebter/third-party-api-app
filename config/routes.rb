Rails.application.routes.draw do
  get "favq" => "fav_q#index"
  get "favq/:topic" => "fav_q#index"
end
