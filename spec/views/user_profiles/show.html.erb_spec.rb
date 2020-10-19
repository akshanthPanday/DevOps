require 'rails_helper'

RSpec.describe "user_profiles/show", type: :view do
  before(:each) do
    @user_profile = assign(:user_profile, UserProfile.create!(
      age: 2,
      location: "MyText",
      mobile_number: "Mobile Number",
      user_tag: "MyText",
      user: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Mobile Number/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end
