require 'rails_helper'

RSpec.describe "addresses/new", type: :view do
  before(:each) do
    assign(:address, Address.new(
      address1: "MyText",
      address2: "MyText",
      city: "MyString",
      postcode: "MyString",
      user: nil
    ))
  end

  it "renders new address form" do
    render

    assert_select "form[action=?][method=?]", addresses_path, "post" do

      assert_select "textarea[name=?]", "address[address1]"

      assert_select "textarea[name=?]", "address[address2]"

      assert_select "input[name=?]", "address[city]"

      assert_select "input[name=?]", "address[postcode]"

      assert_select "input[name=?]", "address[user_id]"
    end
  end
end
