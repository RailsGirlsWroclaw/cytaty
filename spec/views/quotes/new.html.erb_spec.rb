require 'rails_helper'

RSpec.describe "quotes/new", type: :view do
  before(:each) do
    assign(:quote, Quote.new(
      author: "MyString",
      quote: "MyText"
    ))
  end

  it "renders new quote form" do
    render

    assert_select "form[action=?][method=?]", quotes_path, "post" do

      assert_select "input[name=?]", "quote[author]"

      assert_select "textarea[name=?]", "quote[quote]"
    end
  end
end
