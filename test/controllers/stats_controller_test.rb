require "test_helper"

class StatsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "index" do
    get "/stats.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Stat.count, data.length
  end

  test "create" do
    assert_difference "Stat.count", 1 do
      post "/stats.json", params: { user_id: 1, game_id: 1, avg_viewers: 10, time_streamed: 65, followers_gained: 5, review: "Chickens everywhere!" }
      assert_response 200
    end
  end

  test "update" do
    stat = Stat.first
    patch "/stats/#{stat.id}.json", params: { avg_viewers: "Updated avg_viewers" }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal "Updated avg_viewers", data["avg_viewers"]
  end
end
