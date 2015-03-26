class PhotosController<ApplicationController
  def new
    @space = Space.find(params[:space_id])
    @photo = Photo.new
  end

  def create
    @space = Space.find(params[:space_id])
    @photo = Photo.create({image: params[:image]})
    @photo.space_id = @space.id
    if @photo.save
      flash[:notice] = "Photo Uploaded"
      redirect_to :back
    else
      flash[:alert] = "Try Again"
      redirect_to :back
    end
  end

  private
    def photo_params
      params.require(:photo).permit(:image)
    end

end
