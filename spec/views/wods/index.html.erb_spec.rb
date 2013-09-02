require 'spec_helper'

describe "wods/index" do
  before(:each) do
    assign(:wods, [
      stub_model(Wod,
        :name => "Name",
        :wod_type => "Wod Type",
        :score => "Score",
        :score_type => "Score Type",
        :rx => false,
        :notes => "Notes"
      ),
      stub_model(Wod,
        :name => "Name",
        :wod_type => "Wod Type",
        :score => "Score",
        :score_type => "Score Type",
        :rx => false,
        :notes => "Notes"
      )
    ])
  end

  it "renders a list of wods" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Wod Type".to_s, :count => 2
    assert_select "tr>td", :text => "Score".to_s, :count => 2
    assert_select "tr>td", :text => "Score Type".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Notes".to_s, :count => 2
  end
end
