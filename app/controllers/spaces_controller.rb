class SpacesController<ApplicationController
  def index
    @spaces = Space.all
  end

  def new
    @space = Space.new
  end

  def create
    @space = Space.new(space_params)
    @space.user = current_user
    if @space.save
      flash[:notice] = "Successfully created your space."
      redirect_to new_space_photo_path(@space)
    else
      flash[:alert] = "There were problems with your space. Try again."
      redirect_to :back
    end
  end

  def show
    @space = Space.find(params[:id])
  end

private
  def space_params
    params.require(:space).permit(:address,:description,:cost)
  end
end
