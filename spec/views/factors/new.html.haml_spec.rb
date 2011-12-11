require 'spec_helper'

describe "factors/new.html.haml" do
  before(:each) do
    assign(:factor, stub_model(Factor,
      :NDB_No => "MyString",
      :track_id => 1
    ).as_new_record)
  end

  it "renders new factor form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => factors_path, :method => "post" do
      assert_select "input#factor_NDB_No", :name => "factor[NDB_No]"
      assert_select "input#factor_track_id", :name => "factor[track_id]"
    end
  end
end
