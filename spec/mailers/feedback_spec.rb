require "rails_helper"

RSpec.describe FeedbackMailer, type: :mailer do
  describe "received" do
    let(:mail) { FeedbackMailer.received }

    it "renders the headers" do
      expect(mail.subject).to eq("Received")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

  describe "issued" do
    let(:mail) { FeedbackMailer.issued }

    it "renders the headers" do
      expect(mail.subject).to eq("Issued")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

  describe "assigned" do
    let(:mail) { FeedbackMailer.assigned }

    it "renders the headers" do
      expect(mail.subject).to eq("Assigned")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

end
