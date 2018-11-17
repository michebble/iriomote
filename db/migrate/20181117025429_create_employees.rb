class CreateEmployees < ActiveRecord::Migration[5.0]
  def change
    create_table :employees do |t|
      t.string :email, null: false
      t.string :name, null: false
      t.belongs_to :team, index: true, null: false

      t.timestamps
    end
  end
end
