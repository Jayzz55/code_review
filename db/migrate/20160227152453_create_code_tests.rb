class CreateCodeTests < ActiveRecord::Migration
  def change
    create_table :code_tests do |t|
      t.string :name
      t.text :instructions

      t.timestamps null: false
    end
  end
end
