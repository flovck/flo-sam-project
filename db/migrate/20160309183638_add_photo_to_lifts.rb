class AddPhotoToLifts < ActiveRecord::Migration
  def change
    add_column :lifts, :photo, :string
  end
end
