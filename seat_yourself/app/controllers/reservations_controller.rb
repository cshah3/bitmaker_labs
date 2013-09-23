class ReservationsController < ApplicationController
  before_filter :load_restaurant
  before_filter :ensure_logged_in

  def index
    @reservation = @restaurant.reservations
  end

  def create
    @reservation = @restaurant.reservations.build(reservation_params)
    @reservation.user_id = current_user.id

    if @reservation.save
      redirect_to @restaurant, notice: 'Reservation created successfully!'
    else
      redirect_to @restaurant, notice: 'Reservation unsuccessful!'
    end
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    redirect_to restaurant_reservations_path
  end

  private

  def load_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def reservation_params
    params.require(:reservation).permit(:spot, :size, :restaurant_id)
  end
end