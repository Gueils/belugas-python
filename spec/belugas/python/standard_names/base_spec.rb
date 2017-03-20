require "spec_helper"

describe Belugas::Python::StandardNames do
  it "has a NAMES has defined" do
    expect(Belugas::Python::StandardNames::NAMES).not_to be nil
  end
end
