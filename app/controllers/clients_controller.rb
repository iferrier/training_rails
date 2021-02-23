class ClientsController < ApplicationController
  def index
    @clients = Client.all

    @markers = @clients.geocoded.map do |client|
      {
        lat: client.latitude,
        lng: client.longitude
      }
    end
  end

  def new
    @client = Client.new
  end

  def create
    @client = Client.new(client_params)
    if @client.save
      redirect_to clients_path
    else
      render :new
    end
  end

  def show
    @client = Client.find(params[:id])
    @boardbooking = Boardbooking.new
    @boardbookings = @client.boardbookings
  end

  def destroy
    @client = Client.find(params[:id])
    @client.destroy
    redirect_to clients_path
  end

  private

  def client_params
    params.require(:client).permit(:address, :tel, :name)
  end
end
