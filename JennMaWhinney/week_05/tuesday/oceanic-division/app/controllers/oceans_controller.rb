class OceansController < ApplicationController
  def index
    @oceans = Ocean.all
  end

  def show
    @ocean = Ocean.find params[:id]
  end

  def new
  end

  def create
    ocean = Ocean.create ocean_params
    redirect_to ocean_path(ocean.id)
  end

  def destroy
    ocean = Ocean.find params[:id]
    ocean.destroy
    redirect_to oceans_path
  end

  def edit
    @ocean = Ocean.find params[:id]
  end

  def update
    ocean = Ocean.find params[:id]
    ocean.update ocean_params
    redirect_to ocean_path(ocean.id)
  end

  private
  def ocean_params
    params.permit :name, :image, :area, :volume, :depth
  end

end
