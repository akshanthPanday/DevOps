require 'rails_helper'

RSpec.describe "user_profiles/edit", type: :view do
  before(:each) do
    @user_profile = assign(:user_profile, UserProfile.create!(
      age: 1,
      location: "MyText",
      mobile_number: "MyString",
      user_tag: "MyText",
      user: nil
    ))
  end

  it "renders the edit user_profile form" do
    render

    assert_select "form[action=?][method=?]", user_profile_path(@user_profile), "post" do

      assert_select "input[name=?]", "user_profile[age]"

      assert_select "textarea[name=?]", "user_profile[location]"

      assert_select "input[name=?]", "user_profile[mobile_number]"

      assert_select "textarea[name=?]", "user_profile[user_tag]"

      assert_select "input[name=?]", "user_profile[user_id]"
    end
  end
end
