class CreateAvailableserials < ActiveRecord::Migration
  def change
    create_table :availableserials do |t|
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end
