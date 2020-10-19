require 'rails_helper'

RSpec.describe "addresses/show", type: :view do
  before(:each) do
    @address = assign(:address, Address.create!(
      address1: "MyText",
      address2: "MyText",
      city: "City",
      postcode: "Postcode",
      user: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/Postcode/)
    expect(rendered).to match(//)
  end
end
