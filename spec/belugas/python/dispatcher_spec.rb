require "spec_helper"

describe Belugas::Python::Dispatcher do
  subject { Belugas::Python::Dispatcher.new("spec/support/requirements.txt") }

  context "has valid categories" do
    it "renders proper database features" do
      expect(subject.render).to eq([{"type"=>"feature",
                                     "name"=>"postgresql",
                                     "version"=>"0.3",
                                     "description"=>"The application uses postgresql",
                                     "categories"=>["Database"],
                                     "cue_locations"=>[""]},
                                    {"type"=>"feature",
                                     "name"=>"Python",
                                     "version"=>"2.7",
                                     "description"=>"The application uses Python code",
                                     "categories"=>["Language"]}]
                                  )
    end
  end

  context "has empty categories" do
    it "for a known requirement" do
      missing_framework_subject = Belugas::Python::Dispatcher.new("spec/support/empty_requirements.txt")
      expect(missing_framework_subject.render).to eq([{"type"=>"feature", "name"=>"Python", "version"=>"2.7", "description"=>"The application uses Python code", "categories"=>["Language"]}])
    end
  end
end
