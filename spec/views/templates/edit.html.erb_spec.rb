require 'spec_helper'

describe "templates/edit" do
  before(:each) do
    @template = assign(:template, stub_model(Template,
      :name => "MyString",
      :thumbnail => 1,
      :description => "MyText"
    ))
  end

  it "renders the edit template form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", template_path(@template), "post" do
      assert_select "input#template_name[name=?]", "template[name]"
      assert_select "input#template_thumbnail[name=?]", "template[thumbnail]"
      assert_select "textarea#template_description[name=?]", "template[description]"
    end
  end
end
