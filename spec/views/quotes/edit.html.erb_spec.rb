require 'rails_helper'

RSpec.describe "quotes/edit", type: :view do
  let(:quote) {
    Quote.create!(
      author: "MyString",
      quote: "MyText"
    )
  }

  before(:each) do
    assign(:quote, quote)
  end

  it "renders the edit quote form" do
    render

    assert_select "form[action=?][method=?]", quote_path(quote), "post" do

      assert_select "input[name=?]", "quote[author]"

      assert_select "textarea[name=?]", "quote[quote]"
    end
  end
end
