class SurfboardsController < ApplicationController
  def index
    @surfboards = Surfboard.all
  end

  def new
    @surfboard = Surfboard.new
  end

  def create
    @surfboard = Surfboard.new(surfboard_params)
    if @surfboard.save
      redirect_to surfboards_path
    else
      render :new
    end
  end

  private

  def surfboard_params
    params.require(:surfboard).permit(:name, :price)
  end
end
