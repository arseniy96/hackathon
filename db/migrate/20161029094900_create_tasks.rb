class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :description
      t.bigint :date
      t.boolean :complete, default: false 
      t.references :user, default: 1

      t.timestamps null: false
    end
  end
end
