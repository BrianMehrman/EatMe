require 'spec_helper'

describe "factors/show.html.haml" do
  before(:each) do
    @factor = assign(:factor, stub_model(Factor,
      :NDB_No => "Ndb No",
      :track_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Ndb No/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
