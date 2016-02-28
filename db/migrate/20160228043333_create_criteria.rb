class CreateCriteria < ActiveRecord::Migration
  def change
    create_table :criteria do |t|
      t.references :code_test, index: true, foreign_key: true
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end
