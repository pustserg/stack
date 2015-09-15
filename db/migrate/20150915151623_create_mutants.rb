class CreateMutants < ActiveRecord::Migration
  def change
    create_table :mutants do |t|
      t.string :name, null: false
      t.string :race

      t.timestamps null: false
    end
  end
end
