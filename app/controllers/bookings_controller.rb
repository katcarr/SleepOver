class BookingsController<ApplicationController
  def new

  end

  def create

  end

  end

  def destroy

  end

  private
    def booking_params
        params.require(:booking).permit(:start_date. :end_date)
    end

end
