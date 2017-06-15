require "spec_helper"

describe Belugas::Python::LibrariesCollection do
  before {
    @requirements = []
    @requirements << Belugas::Python::Requirement.new("faker", 0.0)
    @requirements << Belugas::Python::Requirement.new("django", 1.8)
  }

  subject { Belugas::Python::LibrariesCollection.new(@requirements) }

  it "has dependencies" do
    expect(subject.dependencies).not_to be_empty
  end
end
