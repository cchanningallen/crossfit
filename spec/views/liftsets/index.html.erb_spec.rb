require 'spec_helper'

describe "liftsets/index" do
  before(:each) do
    assign(:liftsets, [
      stub_model(Liftset,
        :setnum => 1,
        :weight => 1.5,
        :reps => 2,
        :lift_id => 3
      ),
      stub_model(Liftset,
        :setnum => 1,
        :weight => 1.5,
        :reps => 2,
        :lift_id => 3
      )
    ])
  end

  it "renders a list of liftsets" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
