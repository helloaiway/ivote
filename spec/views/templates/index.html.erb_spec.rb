require 'spec_helper'

describe "templates/index" do
  before(:each) do
    assign(:templates, [
      stub_model(Template,
        :name => "Name",
        :thumbnail => 1,
        :description => "MyText"
      ),
      stub_model(Template,
        :name => "Name",
        :thumbnail => 1,
        :description => "MyText"
      )
    ])
  end

  it "renders a list of templates" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
