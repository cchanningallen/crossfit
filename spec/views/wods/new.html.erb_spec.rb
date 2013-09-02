require 'spec_helper'

describe "wods/new" do
  before(:each) do
    assign(:wod, stub_model(Wod,
      :name => "MyString",
      :wod_type => "MyString",
      :score => "MyString",
      :score_type => "MyString",
      :rx => false,
      :notes => "MyString"
    ).as_new_record)
  end

  it "renders new wod form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", wods_path, "post" do
      assert_select "input#wod_name[name=?]", "wod[name]"
      assert_select "input#wod_wod_type[name=?]", "wod[wod_type]"
      assert_select "input#wod_score[name=?]", "wod[score]"
      assert_select "input#wod_score_type[name=?]", "wod[score_type]"
      assert_select "input#wod_rx[name=?]", "wod[rx]"
      assert_select "input#wod_notes[name=?]", "wod[notes]"
    end
  end
end
