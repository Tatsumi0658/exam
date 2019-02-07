class HomesController < ApplicationController
  before_action :set_homes, only:[:show, :edit, :update, :destroy]
  def index
    @homes = Home.all
  end

  def new
    @home = Home.new
    2.times{ @home.stations.build }
  end

  def create
    @home = Home.new(home_params)
    if @home.save
      redirect_to homes_path
    else
      render :new
    end
  end

  def show
    @stations = Station.where(home_id: set_homes.id).all
  end

  def edit
  end

  def update
    if @home.update(home_params)
      redirect_to homes_path
    else
      render :edit
    end
  end

  def destroy
    @home.destroy
    redirect_to homes_path
  end

  private
  def home_params
    params.require(:home).permit(:name, :rent, :address, :age, :remarks, stations_attributes: [:id, :line, :station, :walk])
  end

  def set_homes
    @home = Home.find(params[:id])
  end
end
