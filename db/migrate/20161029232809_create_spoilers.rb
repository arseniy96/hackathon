class CreateSpoilers < ActiveRecord::Migration
  def change
    create_table :spoilers do |t|
      t.text :text
      t.boolean :is_sended, default: false
      t.references :serial

      t.timestamps null: false
    end
  end
end
