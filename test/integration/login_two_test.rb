require "test_helper"

# To be handled correctly this spec must end with "Integration Test"
describe "LoginTwo Integration Test" do
  let(:mike) {
    @mike ||= users :mike
  }

  it "logs in, updates navigation links" do
    get root_path
    assert_response :success
    assert_match /Login/, response.body
    refute_match /Logout/, response.body

    get login_path
    assert_response :success

    post_via_redirect login_path, user: { email:    mike.email,
                                          password: "mike" }
    assert_response :success
    assert_equal root_path, path

    refute_match /Login/, response.body
    assert_match /Logout/, response.body
    assert_match "Hello #{mike.name}", response.body
  end
end
