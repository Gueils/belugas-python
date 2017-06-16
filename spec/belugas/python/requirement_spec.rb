require "spec_helper"

describe Belugas::Python::Requirement do
  subject { Belugas::Python::Requirement.new("fake", 0.0) }

  context "has valid categories" do
    it "for a known requirement" do
      known_category_subject = Belugas::Python::Requirement.new("django", 0.0)
      expect(known_category_subject.categories).to eq(["Framework"])
    end
  end

  context "has empty categories" do
    it "for a known requirement" do
      known_category_subject = Belugas::Python::Requirement.new("sinatra", 0.0)
      expect(known_category_subject.categories).to be_nil
    end
  end

  it "updates its standard name" do
    expect(subject.update("faker")).to eq(subject)
    expect(subject.standard_name).to eq("faker")
  end
end
