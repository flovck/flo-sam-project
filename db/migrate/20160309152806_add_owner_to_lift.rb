class AddOwnerToLift < ActiveRecord::Migration
  def change
    add_reference :lifts, :owner, index: true, foreign_key: true
  end
end
