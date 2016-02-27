class CreateSubmissions < ActiveRecord::Migration
  def change
    create_table :submissions do |t|
      t.integer :status
      t.string :name
      t.string :email
      t.string :role
      t.integer :code_test_id
      t.uuid :uuid
      t.references :code_test, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
