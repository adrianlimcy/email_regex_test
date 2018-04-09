# Preview all emails at http://localhost:3000/rails/mailers/feedback
class FeedbackPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/feedback/received
  def received
    FeedbackMailer.received
  end

  # Preview this email at http://localhost:3000/rails/mailers/feedback/issued
  def issued
    FeedbackMailer.issued
  end

  # Preview this email at http://localhost:3000/rails/mailers/feedback/assigned
  def assigned
    FeedbackMailer.assigned
  end

end
