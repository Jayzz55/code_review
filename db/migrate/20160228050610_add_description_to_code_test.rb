class AddDescriptionToCodeTest < ActiveRecord::Migration
  def change
    add_column :code_tests, :description, :text
  end
end
