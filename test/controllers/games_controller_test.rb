require "test_helper"

class GamesControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "index" do
    get "/games.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Game.count, data.length
  end

  test "create" do
    assert_difference "Game.count", 1 do
      post "/games.json", params: { name: "Test", genre: "Testy", player_support: "Test", image_url: "user.png" }
      assert_response 200
    end
  end

  test "show" do
    get "/games/#{Game.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "name", "genre", "player_support", "image_url", "created_at", "updated_at"], data.keys
  end

  test "update" do
    user = User.first
    patch "/users/#{user.id}.json", params: { name: "Updated name" }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal "Updated name", data["name"]
  end

  test "destroy" do
    assert_difference "Game.count", -1 do
      delete "/games/#{Game.first.id}.json"
      assert_response 200
    end
  end
end
