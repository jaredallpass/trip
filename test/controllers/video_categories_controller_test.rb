require 'test_helper'

class VideoCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @video_category = video_categories(:one)
  end

  test "should get index" do
    get video_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_video_category_url
    assert_response :success
  end

  test "should create video_category" do
    assert_difference('VideoCategory.count') do
      post video_categories_url, params: { video_category: { name: @video_category.name } }
    end

    assert_redirected_to video_category_url(VideoCategory.last)
  end

  test "should show video_category" do
    get video_category_url(@video_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_video_category_url(@video_category)
    assert_response :success
  end

  test "should update video_category" do
    patch video_category_url(@video_category), params: { video_category: { name: @video_category.name } }
    assert_redirected_to video_category_url(@video_category)
  end

  test "should destroy video_category" do
    assert_difference('VideoCategory.count', -1) do
      delete video_category_url(@video_category)
    end

    assert_redirected_to video_categories_url
  end
end
