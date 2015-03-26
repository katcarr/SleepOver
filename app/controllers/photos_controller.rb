class PhotosController<ApplicationController
  def new
    @space = Space.find(params[:space_id])
    @photo = Photo.new
  end

  def create
    @space = Space.find(params[:space_id])
    @photo = Photo.new(photo_params)
    @photo.space_id = @space.id
    if @photo.save
      flash[:notice] = "Photo Uploaded"
      redirect_to :back
    else
      flash[:alert] = "Try Again"
      redirect_to :back
    end
  end

  def destroy
    photo = Photo.find(params[:id])
    if photo.destroy
      flash[:notice] = "Photo removed"
    else
      flash[:alert] = "Something went wrong."
    end
    redirect_to :back
  end

  private
    def photo_params
      params.require(:photo).permit(:image)
    end

end
