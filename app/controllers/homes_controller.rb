class HomesController < ApplicationController
  before_action :set_homes, only:[:show, :edit, :update, :destroy]
  def index
    @homes = Home.all
  end

  def new
    @home = Home.new
  end

  def create
    @home = Home.new(home_params)
    if @home.save
      redirect_to homes_path
      flash[:success] = "新規追加しました"
    else
      flash[:danger] = "失敗しました"
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @home.update(home_params)
      redirect_to homes_path
      flash[:success] = "更新が完了しました"
    else
      flash[:danger] = "更新に失敗しました"
      render :edit
    end
  end

  def destroy
    @home.destroy
    redirect_to homes_path
    flash[:success] = "削除が完了しました"
  end

  private
  def home_params
    params.require(:home).permit(:integer, :address, :age, :remarks)
  end

  def set_homes
    @home = Home.find(params[:id])
  end
end
