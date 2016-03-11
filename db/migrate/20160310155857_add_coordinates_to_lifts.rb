class AddCoordinatesToLifts < ActiveRecord::Migration
  def change
    add_column :lifts, :latitude, :float
    add_column :lifts, :longitude, :float
  end
end
