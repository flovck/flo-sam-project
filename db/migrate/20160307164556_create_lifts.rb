class CreateLifts < ActiveRecord::Migration
  def change
    create_table :lifts do |t|
      t.string :name
      t.string :address
      t.string :category

      t.timestamps null: false
    end
  end
end
