require "test_helper"

class YachtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @yacht = yachts(:one)
  end

  test "should get index" do
    get yachts_url, as: :json
    assert_response :success
  end

  test "should create yacht" do
    assert_difference("Yacht.count") do
      post yachts_url, params: { yacht: { index: @yacht.index, new: @yacht.new, show: @yacht.show } }, as: :json
    end

    assert_response :created
  end

  test "should show yacht" do
    get yacht_url(@yacht), as: :json
    assert_response :success
  end

  test "should update yacht" do
    patch yacht_url(@yacht), params: { yacht: { index: @yacht.index, new: @yacht.new, show: @yacht.show } }, as: :json
    assert_response :success
  end

  test "should destroy yacht" do
    assert_difference("Yacht.count", -1) do
      delete yacht_url(@yacht), as: :json
    end

    assert_response :no_content
  end
end
