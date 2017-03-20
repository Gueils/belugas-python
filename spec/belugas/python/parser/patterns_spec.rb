require "spec_helper"

describe Belugas::Python::Parser::Patterns do
  it "has patterns" do
    expect(Belugas::Python::Parser::Patterns::REQUIREMENT_CALL).not_to be nil
  end
end
