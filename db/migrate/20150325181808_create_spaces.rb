class CreateSpaces < ActiveRecord::Migration
  def change
    create_table :spaces do |t|
      t.string :address
      t.integer :user_id
      t.float :cost
      t.string :description

      t.timestamps
    end
  end
end
