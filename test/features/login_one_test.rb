require "test_helper"

class LoginOneTest < Capybara::Rails::TestCase
  def mike
    @mike ||= users :mike
  end

  def test_login
    visit root_path

    assert page.has_content? "Login"
    refute page.has_content? "Logout"

    visit login_path
    fill_in "Email",    with: mike.email
    fill_in "Password", with: "mike"
    click_on "Sign in"

    assert_equal root_path, current_path

    refute page.has_content? "Login"
    assert page.has_content? "Logout"
    assert page.has_content? "Hello #{mike.name}"
  end
end
