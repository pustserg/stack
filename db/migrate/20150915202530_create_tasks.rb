class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name, null: false
      t.text :description
      t.boolean :finished, null: false, default: false

      t.timestamps null: false
    end
  end
end
