require "spec_helper"

describe Belugas::Python::Parser::Requirements do
  subject {
    Belugas::Python::Parser::Requirements.new("spec/support/requirements.txt")
  }

  it "has a bunch of requirements" do
    expect(subject.requirements).not_to be nil
  end

  context "requirements is empty" do
    failed_subject = Belugas::Python::Parser::Requirements.new("spec/support/empty_requirements.txt")

    it "has nothing to offer" do
      expect(failed_subject.requirements).to be_empty
    end
  end
end
