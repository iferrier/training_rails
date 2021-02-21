class SurfboardsController < ApplicationController
  def index
    @surfboards = Surfboard.all
  end
end
