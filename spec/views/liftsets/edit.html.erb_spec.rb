require 'spec_helper'

describe "liftsets/edit" do
  before(:each) do
    @liftset = assign(:liftset, stub_model(Liftset,
      :setnum => 1,
      :weight => 1.5,
      :reps => 1,
      :lift_id => 1
    ))
  end

  it "renders the edit liftset form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", liftset_path(@liftset), "post" do
      assert_select "input#liftset_setnum[name=?]", "liftset[setnum]"
      assert_select "input#liftset_weight[name=?]", "liftset[weight]"
      assert_select "input#liftset_reps[name=?]", "liftset[reps]"
      assert_select "input#liftset_lift_id[name=?]", "liftset[lift_id]"
    end
  end
end
