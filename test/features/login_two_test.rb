require "test_helper"

feature "LoginTwo" do
  given(:mike){
    @mike ||= users :mike
  }

  scenario "logs in and does stuff" do
    visit root_path

    page.must_have_content "Login"
    page.wont_have_content "Logout"

    visit login_path
    fill_in "Email",    with: mike.email
    fill_in "Password", with: "mike"
    click_on "Sign in"

    current_path.must_equal root_path

    page.wont_have_content "Login"
    page.must_have_content "Logout"
    page.must_have_content "Hello #{mike.name}"
  end
end
