class HousesController < ApplicationController

  def index
    @houses = House.all
    logger.info "Index \n\n"
  end

  def show
    @houses = House.all
  end

end
