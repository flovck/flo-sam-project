class AddUserToLifts < ActiveRecord::Migration
  def change
    add_reference :lifts, :user, index: true, foreign_key: true
  end
end
