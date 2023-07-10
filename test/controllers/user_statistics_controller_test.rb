require "test_helper"

class UserStatisticsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "index" do
    get "/user_statistics.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal UserStatistic.count, data.length
  end

  test "create" do
    assert_difference "UserStatistic.count", 1 do
      post "/user_statistics.json", params: { game_id: 1, user_id: 1, avg_viewers: 1, time_streamed: 1, followers_gained: 1 }
      assert_response 200
    end
  end
end
