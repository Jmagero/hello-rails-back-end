class Api::V1::MessagesController < ApplicationController
  # def index
  #   def index
  #     render json: 'Welcome to Game Safari Reservations'
  #   end
  # end

  def hello
    @message = Message.find(Message.pluck(:id).sample)
    render json: @message, status: 200
  end
end