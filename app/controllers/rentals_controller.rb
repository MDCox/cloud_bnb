class RentalsController < ApplicationController
  def index
  end

  def new
    @rental = Rental.new
  end

  def create
    @rental = Rental.new(property_id: rental_params[:property_id],
                         start_date: Date.strptime(rental_params[:start_date], "%m/%d/%Y"),
                         end_date: Date.strptime(rental_params[:end_date], "%m/%d/%Y"))
    if @rental.save
      current_user.rentals << @rental
      redirect_to :back
    else
      render "new"
    end
  end

private
  def rental_params
    params.require(:rental).permit(:property_id, :start_date, :end_date)
  end
end
