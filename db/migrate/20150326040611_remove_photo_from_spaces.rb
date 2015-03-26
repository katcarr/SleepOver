class RemovePhotoFromSpaces < ActiveRecord::Migration
  def change
    remove_attachment :spaces, :photo
  end
end
