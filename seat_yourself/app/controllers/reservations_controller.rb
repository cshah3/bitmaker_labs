class ReservationsController < ApplicationController
  before_filter :load_restaurant
  before_filter :ensure_logged_in, :only => [:edit, :create, :show, :update, :destroy]

  def index
    @reservation = @restaurant.reservations
  end

  def new
  	@reservation = Reservation.new
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  def create
    @reservation = @restaurant.reservations.build(reservation_params)
    @reservation.user_id = current_user.id

    if @reservation.save
      redirect_to restaurants_path, notice: 'Reservation created successfully'
    else
      render :show
    end
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
  end

  private

  def load_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def reservation_params
    params.require(:reservation).permit(:spot, :size, :restaurant_id)
  end
end