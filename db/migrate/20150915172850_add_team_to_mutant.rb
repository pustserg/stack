class AddTeamToMutant < ActiveRecord::Migration
  def change
    add_reference :mutants, :team, index: true, foreign_key: true
  end
end
