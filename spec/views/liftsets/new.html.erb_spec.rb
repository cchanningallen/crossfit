require 'spec_helper'

describe "liftsets/new" do
  before(:each) do
    assign(:liftset, stub_model(Liftset,
      :setnum => 1,
      :weight => 1.5,
      :reps => 1,
      :lift_id => 1
    ).as_new_record)
  end

  it "renders new liftset form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", liftsets_path, "post" do
      assert_select "input#liftset_setnum[name=?]", "liftset[setnum]"
      assert_select "input#liftset_weight[name=?]", "liftset[weight]"
      assert_select "input#liftset_reps[name=?]", "liftset[reps]"
      assert_select "input#liftset_lift_id[name=?]", "liftset[lift_id]"
    end
  end
end
