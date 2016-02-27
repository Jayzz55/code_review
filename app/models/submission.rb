class Submission < ActiveRecord::Base
  belongs_to :code_test

  enum status: [ :unsubmitted, :submitted, :approved, :rejected]
end
