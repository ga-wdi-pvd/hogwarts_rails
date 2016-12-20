class HousesController < ApplicationController

  def index
    @houses = House.all
  end

  def show
    @house = House.find(params[:id])
  end

  def new
    @house = House.new
  end

  def create
    @house = House.new(house_params)
    if @house.save
      redirect_to :action => 'index'
    else
      render :action => 'new'
    end
  end

  def house_params
    params.require(:name)
  end

  def edit
    @house = House.find(params[:id])
  end

  def update
  end

  def delete
  end

end
