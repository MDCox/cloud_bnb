class PropertiesController < ApplicationController
  def index
  end

  def show
    @property = Property.find(params[:id])
  end

  def new
    @property = Property.new
  end

  def create
    @property = Property.create(property_params)
    if @property.save
      redirect_to property_path(@property)
    else
      render "new"
    end
  end

  def destroy
  end

  def edit
  end

  def update
  end

private
  def property_params
    params.require(:property).permit(:name, :price, :location, :owner_id, :description)
  end
end
