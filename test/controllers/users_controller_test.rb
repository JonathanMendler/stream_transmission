require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "index" do
    get "/users.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal User.count, data.length
  end

  test "create" do
    assert_difference "User.count", 1 do
      post "/users.json", params: { name: "Test", email: "Test@test.com", password_digest: "password", image_url: "user.png" }
      assert_response 200
    end
  end

  test "show" do
    get "/users/#{User.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "name", "email", "password_digest", "image_url", "created_at", "updated_at"], data.keys
  end
end
