require 'spec_helper'

describe "lifts/new" do
  before(:each) do
    assign(:lift, stub_model(Lift,
      :name => "MyString",
      :sets => 1,
      :notes => "MyText"
    ).as_new_record)
  end

  it "renders new lift form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", lifts_path, "post" do
      assert_select "input#lift_name[name=?]", "lift[name]"
      assert_select "input#lift_sets[name=?]", "lift[sets]"
      assert_select "textarea#lift_notes[name=?]", "lift[notes]"
    end
  end
end
