class CreateSerials < ActiveRecord::Migration
  def change
    create_table :serials do |t|
      t.string :name
      t.references :user, default: 1

      t.timestamps null: false
    end
  end
end
