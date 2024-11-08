require "test_helper"

class RoutineControllerTest < ActionDispatch::IntegrationTest
  test "destroy" do
    assert_difference "Photo.count", -1 do
      delete "/photos/#{Photo.first.id}.json"
      assert_response 200
    end
  end
  # test "the truth" do
  #   assert true
  # end
end
