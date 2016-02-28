class AddDefaultToSubmissionStatus < ActiveRecord::Migration
  def change
    change_column :submissions, :status, :integer, default: 0, null: false
  end
end
