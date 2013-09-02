require 'spec_helper'

describe "wods/show" do
  before(:each) do
    @wod = assign(:wod, stub_model(Wod,
      :name => "Name",
      :wod_type => "Wod Type",
      :score => "Score",
      :score_type => "Score Type",
      :rx => false,
      :notes => "Notes"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Wod Type/)
    rendered.should match(/Score/)
    rendered.should match(/Score Type/)
    rendered.should match(/false/)
    rendered.should match(/Notes/)
  end
end
