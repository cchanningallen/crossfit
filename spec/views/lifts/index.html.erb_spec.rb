require 'spec_helper'

describe "lifts/index" do
  before(:each) do
    assign(:lifts, [
      stub_model(Lift,
        :name => "Name",
        :sets => 1,
        :notes => "MyText"
      ),
      stub_model(Lift,
        :name => "Name",
        :sets => 1,
        :notes => "MyText"
      )
    ])
  end

  it "renders a list of lifts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
