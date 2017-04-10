require 'rails_helper'

RSpec.describe "examples/index", type: :view do
  before(:each) do
    assign(:examples, [
      Example.create!(
        :title => "Title",
        :body => "MyText"
      ),
      Example.create!(
        :title => "Title",
        :body => "MyText"
      )
    ])
  end

  it "renders a list of examples" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
