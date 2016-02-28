class Submission < ActiveRecord::Base
  belongs_to :code_test

  enum status: [ :unsubmitted, :submitted, :approved, :rejected]

  def candidate_url
    Rails.application.routes.url_helpers.submission_url(uuid, host: 'http://localhost:3000')
  end

  def username
    "#{name.parameterize}-#{id}"
  end

  def password
    uuid.split('-').first
  end
end
