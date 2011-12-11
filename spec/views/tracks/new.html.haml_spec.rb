require 'spec_helper'

describe "tracks/new.html.haml" do
  before(:each) do
    assign(:track, stub_model(Track,
      :name => "MyString",
      :author_id => 1
    ).as_new_record)
  end

  it "renders new track form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tracks_path, :method => "post" do
      assert_select "input#track_name", :name => "track[name]"
      assert_select "input#track_author_id", :name => "track[author_id]"
    end
  end
end
