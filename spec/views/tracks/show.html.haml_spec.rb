require 'spec_helper'

describe "tracks/show.html.haml" do
  before(:each) do
    @track = assign(:track, stub_model(Track,
      :name => "Name",
      :author_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
