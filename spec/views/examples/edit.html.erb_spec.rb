require 'rails_helper'

RSpec.describe "examples/edit", type: :view do
  before(:each) do
    @example = assign(:example, Example.create!(
      :title => "MyString",
      :body => "MyText"
    ))
  end

  it "renders the edit example form" do
    render

    assert_select "form[action=?][method=?]", example_path(@example), "post" do

      assert_select "input#example_title[name=?]", "example[title]"

      assert_select "textarea#example_body[name=?]", "example[body]"
    end
  end
end
