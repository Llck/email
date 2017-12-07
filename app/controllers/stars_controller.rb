class StarsController < ApplicationController

  def index
    @stars = Star.all
  end

  def new
    @star = Star.new
  end

  def create
    star = Star.new(star_params)
    star.save
    redirect_to star
  end

  def show
    @star = Star.find(params[:id])
  end

  def edit
    @star = Star.find(params[:id])
  end

  def update
    @star = Star.find(params[:id])
    @star.update(star_params)
    redirect_to star
  end

  def destroy
    @star = Star.find(params[:id])
    @star.destroy
    redirect_to stars_path
  end

private
  def star_params
    params.require(:star).permit(:name, :email)
  end

end
