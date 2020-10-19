require 'rails_helper'

RSpec.describe "user_profiles/index", type: :view do
  before(:each) do
    assign(:user_profiles, [
      UserProfile.create!(
        age: 2,
        location: "MyText",
        mobile_number: "Mobile Number",
        user_tag: "MyText",
        user: nil
      ),
      UserProfile.create!(
        age: 2,
        location: "MyText",
        mobile_number: "Mobile Number",
        user_tag: "MyText",
        user: nil
      )
    ])
  end

  it "renders a list of user_profiles" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "Mobile Number".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
