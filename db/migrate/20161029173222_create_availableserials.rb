class CreateAvailableserials < ActiveRecord::Migration
  def change
    create_table :availableserials do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
