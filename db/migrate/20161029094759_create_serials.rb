class CreateSerials < ActiveRecord::Migration
  def change
    create_table :serials do |t|
      t.string :name
      t.text :description
      t.references :user

      t.timestamps null: false
    end
  end
end
