require 'rails_helper'

RSpec.describe "user_profiles/new", type: :view do
  before(:each) do
    assign(:user_profile, UserProfile.new(
      age: 1,
      location: "MyText",
      mobile_number: "MyString",
      user_tag: "MyText",
      user: nil
    ))
  end

  it "renders new user_profile form" do
    render

    assert_select "form[action=?][method=?]", user_profiles_path, "post" do

      assert_select "input[name=?]", "user_profile[age]"

      assert_select "textarea[name=?]", "user_profile[location]"

      assert_select "input[name=?]", "user_profile[mobile_number]"

      assert_select "textarea[name=?]", "user_profile[user_tag]"

      assert_select "input[name=?]", "user_profile[user_id]"
    end
  end
end
