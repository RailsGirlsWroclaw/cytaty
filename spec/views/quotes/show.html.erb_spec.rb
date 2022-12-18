require 'rails_helper'

RSpec.describe "quotes/show", type: :view do
  before(:each) do
    assign(:quote, Quote.create!(
      author: "Author",
      quote: "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Author/)
    expect(rendered).to match(/MyText/)
  end
end
