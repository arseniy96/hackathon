class CreateSerials < ActiveRecord::Migration
  def change
    create_table :serials do |t|
      t.string :name
      t.references :user

      t.timestamps null: false
    end
  end
end
