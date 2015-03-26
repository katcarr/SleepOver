class BookingsController<ApplicationController
  def new
    @booking = Booking.new
    @space = Space.find(params[:space_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.space = Space.find(params[:space_id])
    if @booking.save
      flash[:notice] = "Your reservation was successful."
      redirect_to :back
    else
      flash[:alert] = "There were problems with your reservation."
      redirect_to :back
    end
  end

  def destroy

  end

private
  def booking_params
      params.require(:booking).permit(:start_date, :end_date)
  end
end
