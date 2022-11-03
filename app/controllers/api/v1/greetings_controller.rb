class Api::V1::GreetingsController < ApplicationController
  protect_from_forgery with: :null_session

  def index
    messages = message.find_by(id: rand(1..5))
    if messages
      render json: messages
    else
      render json: messages.errors, status: :bad_request
    end
  end
end
