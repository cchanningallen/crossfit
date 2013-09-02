require 'spec_helper'

describe "liftsets/show" do
  before(:each) do
    @liftset = assign(:liftset, stub_model(Liftset,
      :setnum => 1,
      :weight => 1.5,
      :reps => 2,
      :lift_id => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/1.5/)
    rendered.should match(/2/)
    rendered.should match(/3/)
  end
end
