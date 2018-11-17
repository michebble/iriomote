class AddAncestryToTeam < ActiveRecord::Migration[5.0]
  def change
    add_column :teams, :ancestry, :string
    add_index :teams, :ancestry
  end
end
