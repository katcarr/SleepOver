class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.column :space_id, :integer

      t.timestamps
    end
  end
end
