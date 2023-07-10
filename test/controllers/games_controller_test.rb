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
end
