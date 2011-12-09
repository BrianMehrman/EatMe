require 'spec_helper'

describe "meals/new.html.haml" do
  before(:each) do
    assign(:meal, stub_model(Meal,
      :user_id => 1
    ).as_new_record)
  end

  it "renders new meal form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => meals_path, :method => "post" do
      assert_select "input#meal_user_id", :name => "meal[user_id]"
    end
  end
end
