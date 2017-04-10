require 'rails_helper'

RSpec.describe "examples/new", type: :view do
  before(:each) do
    assign(:example, Example.new(
      :title => "MyString",
      :body => "MyText"
    ))
  end

  it "renders new example form" do
    render

    assert_select "form[action=?][method=?]", examples_path, "post" do

      assert_select "input#example_title[name=?]", "example[title]"

      assert_select "textarea#example_body[name=?]", "example[body]"
    end
  end
end
