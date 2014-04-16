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
    @property = Property.find(params[:id])
    @property.destroy
    redirect_to user_path(@property.owner)
  end

  def edit
    @property = Property.find(params[:id])
  end

  def update
    @property = Property.find(params[:id])
    if @property.update(property_params)
      redirect_to property_path(@property)
    else
      render 'edit'
    end

  end

private
  def property_params
    params.require(:property).permit(:name, :price, :location, :owner_id, :description)
  end
end
