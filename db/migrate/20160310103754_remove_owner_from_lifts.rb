class RemoveOwnerFromLifts < ActiveRecord::Migration
  def change
    remove_column :lifts, :owner_id
  end
end
