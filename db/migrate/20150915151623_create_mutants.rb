class CreateMutants < ActiveRecord::Migration
  def change
    create_table :mutants do |t|
      t.string :name
      t.string :race

      t.timestamps null: false
    end
  end
end
