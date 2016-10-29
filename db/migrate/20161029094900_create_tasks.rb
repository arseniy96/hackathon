class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :description
      t.integer :date
      t.boolean :complete
      t.references :user

      t.timestamps null: false
    end
  end
end
