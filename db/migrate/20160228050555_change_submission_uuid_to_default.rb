class ChangeSubmissionUuidToDefault < ActiveRecord::Migration
  def change
    remove_column :submissions, :uuid, :string
    add_column :submissions, :uuid, :uuid, default: 'uuid_generate_v4()'
  end
end
