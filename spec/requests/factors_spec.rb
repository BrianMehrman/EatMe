require 'spec_helper'

describe "Factors" do
  describe "GET /factors" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get factors_path
      response.status.should be(200)
    end
  end
end
