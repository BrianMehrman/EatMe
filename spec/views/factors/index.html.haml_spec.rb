require 'spec_helper'

describe "factors/index.html.haml" do
  before(:each) do
    assign(:factors, [
      stub_model(Factor,
        :NDB_No => "Ndb No",
        :track_id => 1
      ),
      stub_model(Factor,
        :NDB_No => "Ndb No",
        :track_id => 1
      )
    ])
  end

  it "renders a list of factors" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Ndb No".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
