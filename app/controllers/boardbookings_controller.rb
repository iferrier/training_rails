class BoardbookingsController < ApplicationController
  before_action :set_client

  def index
    @boardbookings = @client.boardbookings
  end

  def new
    @boardbooking = Boardbooking.new
  end

  def create
    @boardbooking = Boardbooking.new(boardbooking_params)
    @surfboard = Surfboard.find(boardbooking_params[:surfboard_id])
    @boardbooking.client = @client
    @boardbooking.surfboard = @surfboard

    if @boardbooking.save
      redirect_to client_path(@client)
    else
      redirect_to client_path(@client)
    end
  end

  private

  def set_client
    @client = Client.find(params[:client_id])
  end

  def boardbooking_params
    params.require(:boardbooking).permit(:start_date, :booking_length, :surfboard_id)
  end
end
